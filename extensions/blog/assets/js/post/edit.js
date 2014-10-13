require(['jquery', 'system!locale,finder,imagepopup', 'uikit!form-select,datepicker,autocomplete,timepicker', 'domReady!'], function($, system, uikit) {

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
    var thumbnailImage = $("#form-thumbnail", form),
        thumbnailInput = $('input[name="post[thumbnail]"]', form),
        thumbnailAltInput = $('input[name="post[thumbnail_title]"]', form),
        rootpath = thumbnailImage.attr('data-rootpath'),
        ImagePopup = system.imagepopup();

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