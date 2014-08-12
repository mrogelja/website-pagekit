<?php

namespace MrTheme;

use Pagekit\Widget\Model\Type;
use Pagekit\Widget\Model\WidgetInterface;
use Endroid\OpenWeatherMap\OpenWeatherMap;

class WeatherWidget extends Type
{
    /* unique identifier */
    public function getId()
    {
        return 'widget.weather';
    }

    /* name displayed in admin area */
    public function getName()
    {
        return __('Weather Widget!');
    }

     /* description displayed in admin area */
    public function getDescription(WidgetInterface $widget = null)
    {
        return __('Weather Widget');
    }

    /* returns information representing the current configuration
    of the widget. A weather widget would return the configured
    location for example. Displayed in the widget listing in
    Settings > Dashboard.
    */
    public function getInfo(WidgetInterface $widget)
    {
        return __('Weather Widget');
    }

    /* Rendering the widget. Will usually render a view */
    public function render(WidgetInterface $widget, $options = [])
    {
        $weather = new OpenWeatherMap("88d7a5ce49c553703a5ae44169b7f490");

        return $this['view']->render('theme://mr/views/widgets/weather.razr', ['weather' => $weather->getWeather('Paris,fr')->weather]);
    }

    /* Define a form for the Advanced section in the widget admin settings */
    public function renderForm(WidgetInterface $widget)
    {
        return __('Weather Widget Form.');
    }
}