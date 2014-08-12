<?php

// config array
return [

    'main' => 'MrTheme\\MrTheme',

    'autoload' => [
        'MrTheme\\' => 'src'
    ],


    // positions are sections in your theme where widgets can be published
    'positions' => [
        'logo'         => 'Logo',
        'sky'          => 'Sky',
        'navbar'       => 'Navbar',
        'footer'       => 'Footer',
        // ...
    ],

    // renderers define the markup that is rendered in widget positions
    'renderer' => [
        'blank'     => 'theme://mr/views/renderer/position.blank.razr',
        // ...
    ],

    'resources' => [
        // your resources here...
    ],

    'settings' => [
        'system'  => 'theme://mr/views/admin/settings.razr'
    ]

];