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
        'blank'     => 'theme://mr/views/renderer/position.blank.razr',
        'navbar'    => 'theme://mr/views/renderer/position.navbar.razr',
        'subnav'    => 'theme://mr/views/renderer/position.subnav.razr',
        'offcanvas' => 'theme://mr/views/renderer/position.offcanvas.razr',
        // ...
    ],

    'resources' => [
        'override' => [
            'extension://blog/views/post' => 'views/blog/post',
            'extension://system/views/widgets/login' => 'views/widgets/login'
        ]
    ],

    'settings' => [
        'system'  => 'theme://mr/views/admin/settings.razr'
    ]

];