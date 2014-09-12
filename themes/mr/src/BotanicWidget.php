<?php

namespace MrTheme;

use Buzz\Exception\ClientException;
use GuzzleHttp\Client;
use GuzzleHttp\Stream\GuzzleStreamWrapper;
use Pagekit\Widget\Model\Type;
use Pagekit\Widget\Model\WidgetInterface;
use Symfony\Component\CssSelector\CssSelector;
use Symfony\Component\DomCrawler\Crawler;

class BotanicWidget extends Type
{
    /* unique identifier */
    public function getId()
    {
        return 'widget.botanic';
    }

    /* name displayed in admin area */
    public function getName()
    {
        return __('Botanic Widget!');
    }

     /* description displayed in admin area */
    public function getDescription(WidgetInterface $widget = null)
    {
        return __('Botanic Widget');
    }

    /* returns information representing the current configuration
    of the widget. A weather widget would return the configured
    location for example. Displayed in the widget listing in
    Settings > Dashboard.
    */
    public function getInfo(WidgetInterface $widget)
    {
        return __('Botanic Widget');
    }

    /* Rendering the widget. Will usually render a view */
    public function render(WidgetInterface $widget, $options = [])
    {
        $client = new Client([
          'base_url' => 'http://jardinage.comprendrechoisir.com',
          'defaults' => [
            'proxy' => 'tcp://firewall.ina.fr:81'
          ]
        ]);

        $list = $this->getBotanicLinks($client);

        ksort($list);

        return $this['view']->render('theme://mr/views/widgets/botanic.razr', ['data' => $list]);
    }

    protected function getBotanicLinks($client, $url = null)
    {
        if(!isset($url)) {
            $r = $client->get('/plante/recherche', [
                'query' => [
                    'typesPlante' => ['edible'],
                    'planteComestible' => ['vegetable', 'medical']
                ]]);
        } else {
            $r = $client->get($url);
        }

        $crawler = new Crawler((string)$r->getBody());

        $list = $crawler->filter(".titre_liste_plante")->extract(array('_text', 'href'));
        $next = $crawler->filter("#pagination .suivante > a");

        foreach ($list as $plant){
            $plants[$plant[0]] = $plant[1];
        }

        try{
            $plants = array_merge($plants, $this->getBotanicLinks($client, $next->attr('href')));
        } catch(\Exception $e)
        {}

        return $plants;
    }


    /* Define a form for the Advanced section in the widget admin settings */
    public function renderForm(WidgetInterface $widget)
    {
        return __('Weather Widget Form.');
    }
}