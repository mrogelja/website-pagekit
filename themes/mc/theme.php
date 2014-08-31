<?php

// config array
return [

    'main' => 'McTheme\\McTheme',

    'autoload' => [
        'McTheme\\' => 'src'
    ],


    // positions are sections in your theme where widgets can be published
    'positions' => [
        'logo'         => 'Logo',
        'sky'          => 'Sky',
        'navbar'       => 'Navbar',
        'footer'       => 'Footer',
        'offcanvas'    => 'Offcanvas'
        // ...
    ],

    // renderers define the markup that is rendered in widget positions
    'renderer' => [
        'blank'     => 'theme://mc/views/renderer/position.blank.razr',
        'navbar'    => 'theme://mc/views/renderer/position.navbar.razr',
        'subnav'    => 'theme://mc/views/renderer/position.subnav.razr',
        'offcanvas' => 'theme://mc/views/renderer/position.offcanvas.razr',
        // ...
    ],

    'resources' => [
        'override' => [
            'extension://blog/views/post' => 'views/blog/post',
            'extension://system/views/widgets/login' => 'views/widgets/login'
        ]
    ],

    'settings' => [
        'system'  => 'theme://mc/views/admin/settings.razr'
    ]

];