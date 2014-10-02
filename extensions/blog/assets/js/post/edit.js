require(['jquery', 'system!locale,finder', 'uikit!form-select,datepicker,autocomplete,timepicker', 'tmpl!image.modal,image.replace', 'domReady!'], function($, system, uikit, tmpl) {

    var form = $('#js-post'), id = $('input[name="id"]', form), cancel = $('.js-cancel', form), spinner = $('.js-spinner', form), dirty = false;

    // form ajax saving
    form.on('submit', function(e) {

        e.preventDefault();
        e.stopImmediatePropagation();

        spinner.removeClass('uk-hidden');

        // date handling
        $('[name="post[date]"]', form).val($('[data-uk-datepicker]', form).val()+' '+$('[data-uk-timepicker] input', form).val());

        $.post(form.attr('action'), form.serialize(), function(response) {

            dirty = false;
            uikit.notify(response.message, response.error ? 'danger' : 'success');

            if (response.id) {
                id.val(response.id);
                cancel.text(cancel.data('label'));
            }

            spinner.addClass('uk-hidden');
        });
    });

    // check form before leaving page
    window.onbeforeunload = (function() {

        form.on('change', ':input', function() {
            dirty = true;
        });

        return function(e) {
            if (dirty) return system.trans('post.unsaved-form');
        };

    })();

    // slug handling
    $('input[name="post[title]"]', form).on('blur', function() {

        var slug = $('input[name="post[slug]"]', form);

        if (slug.val() === '') {
            slug.val($(this).val().replace(/\s/g, '-').toLowerCase());
        }

    });

    // markdown handling
    $('input[name="post[data][markdown]"]', form).on('change', function() {
        $('#post-content', form).trigger($(this).prop('checked') ? 'enableMarkdown' : 'disableMarkdown');
    });

    // thumbnail handling
    var ImagePopup = {

        init: function(options){

            var $this = this;

            this.options   = options;

            this.base      = requirejs.toUrl('');
            this.modal     = $(tmpl.render('image.modal')).appendTo('body');
            this.element   = this.modal.find('.js-finder');
            this.image     = this.modal.find('.js-url');
            this.title     = this.modal.find('.js-title');
            this.preview   = this.modal.find('.js-img-preview');
            this.btnselect = this.modal.find('.js-select-image');
            this.screens   = this.modal.find('[data-screen]').css({'animation-duration':'0.1s', '-webkit-animation-duration':'0.1s'});
            this.finder    = null;
            this.picker    = null;
            this.handler   = null;

            // events
            this.modal.on('click', '.js-update', function() {
                $this.handler();
            });

            this.modal.on('click', '[data-goto]', function(e){
                e.preventDefault();
                $this.goto($(this).data('goto'));
            });

            this.element.on('selected-rows', function(e, rows) {

                if (rows.length === 1) {

                    var data = $(rows[0]).data();

                    if (data.type == 'file' && data.url.match(/\.(png|jpg|jpeg|gif|svg)$/i)) {
                        $this.btnselect.prop('disabled', false).data('url', data.url);
                    }

                } else {
                    $this.btnselect.prop('disabled', true);
                }
            });

            this.btnselect.on('click', function() {

                var url = $this.btnselect.data('url');

                $this.updatePreview(url);

                // convert to relative urls
                if (url.indexOf($this.base) === 0) {
                    url = url.replace($this.base, '');
                }

                $this.image.val(url);
                $this.goto('settings');
            });
        },

        getPicker: function() {

            if (!this.picker) {
                this.finder = system.finder(this.element, this.options);
                this.element.find('.js-finder-files').addClass('uk-overflow-container');
                this.picker = uikit.modal(this.modal);
            }

            return this.picker;
        },

        goto: function(screen){
            var next = this.screens.filter('[data-screen="'+screen+'"]');

            if (screen=='settings') {
                this.modal.find('.uk-modal-dialog').removeClass('uk-modal-dialog-large');
            } else {
                this.modal.find('.uk-modal-dialog').addClass('uk-modal-dialog-large');
            }

            this.screens.addClass('uk-hidden');
            next.removeClass('uk-hidden');

            this.getPicker().updateScrollable();
        },

        updatePreview: function(url) {

            var $this = this;

            // convert to relative urls
            if (url && !url.match(/^(\/|http\:|https\:|ftp\:)/i)) {
                url = this.base + '/' + url;
            }

            var pimg = new Image();

            pimg.onerror = function(){
                $this.preview.css('background-image', '').css('background-size', '');
            };

            pimg.onload = function(){
                $this.preview.css('background-image', 'url("'+url+'")').css('background-size', 'contain');
            };

            pimg.src = url;
        }

    };

    var rootpath = 'storage/',
        thumbnailImage = $("#form-thumbnail", form),
        thumbnailInput = $('input[name="post[thumbnail]"]', form),
        thumbnailAltInput = $('input[name="post[thumbnail_title]"]', form);

    ImagePopup.init({
        root: '/' + rootpath
    });

    $('*[data-goto="finder.image"]', form).on('click', function() {
        var data = {
                src : thumbnailInput.val(),
                alt : thumbnailAltInput.val()
            };

        ImagePopup.handler = function() {
            var src = ImagePopup.image.val();

            if (src && !src.match(/^(\/|http\:|https\:|ftp\:)/i)) {
                src = this.base + src;
            }

            ImagePopup.getPicker().hide();
            thumbnailImage.html('<img src="' + src + '" alt="' + ImagePopup.title.val() + '">');
            thumbnailInput.val(src);
            thumbnailAltInput.val(ImagePopup.title.val());
        };

        ImagePopup.title.val(data.alt);
        ImagePopup.image.val(data.src);

        //load finder in image dir

        ImagePopup.updatePreview(ImagePopup.image.val());
        ImagePopup.goto('settings');
        ImagePopup.getPicker().show();

        ImagePopup.finder.loadPath(data.src.trim && data.src.indexOf(rootpath) === 0 ? data.src.replace(rootpath, '').split('/').slice(0, -1).join('/') : '');

        setTimeout(function() { ImagePopup.image.focus(); }, 10);
    });

});