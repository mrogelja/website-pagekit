<?php

namespace MrTheme;

use Pagekit\Framework\Application;
use Pagekit\Theme\Theme;
use Pagekit\Widget\Event\RegisterWidgetEvent;

class MrTheme extends Theme
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

        $app->on('system.widget', function(RegisterWidgetEvent $event) {
            $event->register(new WeatherWidget);
        });
    }
}
