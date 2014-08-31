<?php

namespace McTheme;

use Pagekit\Framework\Application;
use Pagekit\Theme\Theme;
use Pagekit\Widget\Event\RegisterWidgetEvent;

class McTheme extends Theme
{
    /**
     * {@inheritdoc}
     */
    public function boot(Application $app)
    {
        parent::boot($app);

        $app->on('system.site', function() use ($app) {

            // your code here...

        });

    }
}
