define(['jquery', 'system!finder', 'tmpl!image.modal,image.replace', 'uikit'], function($, system, tmpl, uikit) {

    var ImagePopup = function(){
        this.init = function(options) {
            var $this = this;

            this.options = options;

            this.base = requirejs.toUrl('');
            this.modal = $(tmpl.render('image.modal')).appendTo('body');
            this.element = this.modal.find('.js-finder');
            this.image = this.modal.find('.js-url');
            this.title = this.modal.find('.js-title');
            this.preview = this.modal.find('.js-img-preview');
            this.btnselect = this.modal.find('.js-select-image');
            this.screens = this.modal.find('[data-screen]').css({'animation-duration': '0.1s', '-webkit-animation-duration': '0.1s'});
            this.finder = null;
            this.picker = null;
            this.handler = null;

            // events
            this.modal.on('click', '.js-update', function () {
                $this.handler();
            });

            this.modal.on('click', '[data-goto]', function (e) {
                e.preventDefault();
                $this.goto($(this).data('goto'));
            });

            this.element.on('selected-rows', function (e, rows) {

                if (rows.length === 1) {

                    var data = $(rows[0]).data();

                    if (data.type == 'file' && data.url.match(/\.(png|jpg|jpeg|gif|svg)$/i)) {
                        $this.btnselect.prop('disabled', false).data('url', data.url);
                    }

                } else {
                    $this.btnselect.prop('disabled', true);
                }
            });

            this.btnselect.on('click', function () {

                var url = $this.btnselect.data('url');

                $this.updatePreview(url);

                // convert to relative urls
                if (url.indexOf($this.base) === 0) {
                    url = url.replace($this.base, '');
                }

                $this.image.val(url);
                $this.goto('settings');
            });
        }

        this.getPicker = function () {

            if (!this.picker) {
                this.finder = system.finder(this.element, this.options);
                this.element.find('.js-finder-files').addClass('uk-overflow-container');
                this.picker = uikit.modal(this.modal);
            }

            return this.picker;
        };

        this.goto = function (screen) {
            var next = this.screens.filter('[data-screen="' + screen + '"]');

            if (screen == 'settings') {
                this.modal.find('.uk-modal-dialog').removeClass('uk-modal-dialog-large');
            } else {
                this.modal.find('.uk-modal-dialog').addClass('uk-modal-dialog-large');
            }

            this.screens.addClass('uk-hidden');
            next.removeClass('uk-hidden');

            this.getPicker().updateScrollable();
        };

        this.updatePreview = function (url) {

            var $this = this;

            // convert to relative urls
            if (url && !url.match(/^(\/|http\:|https\:|ftp\:)/i)) {
                url = this.base + '/' + url;
            }

            var pimg = new Image();

            pimg.onerror = function () {
                $this.preview.css('background-image', '').css('background-size', '');
            };

            pimg.onload = function () {
                $this.preview.css('background-image', 'url("' + url + '")').css('background-size', 'contain');
            };

            pimg.src = url;
        };
    };

    system.imagepopup = function() {
        return new ImagePopup();
    };

    return system;
});