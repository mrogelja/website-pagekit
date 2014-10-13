<?php

return [

    'up' => function() use ($app) {
        $util    = $app['db']->getUtility();

        $columns = $util->listTableColumns('@blog_post');
        $table   = $util->listTableDetails('@blog_post');
        $newColumns = [];

        if (!isset($columns['thumbnail'])) {
            $newColumns[] = $table->addColumn('thumbnail', 'string', ['length' => 255]);
        }

        if (!isset($columns['thumbnail_title'])) {
            $newColumns[] = $table->addColumn('thumbnail_title', 'text');
        }

        if (!empty($newColumns)) {
            $tableDiff = new \Doctrine\DBAL\Schema\TableDiff('@blog_post', $newColumns);
            $util->alterTable($tableDiff);
        }
    },

    'down' => function() use ($app) {
        $util    = $app['db']->getUtility();
        $columns = $util->listTableColumns('@blog_post');
        $table   = $util->listTableDetails('@blog_post');
        $oldColumns = [];

        if (isset($columns['thumbnail'])) {
            $oldColumns[] = $table->dropColumn('thumbnail');
        }

        if (isset($columns['thumbnail_title'])) {
            $oldColumns[] = $table->dropColumn('thumbnail_title');
        }

        if (!empty($oldColumns)) {
            $tableDiff = new \Doctrine\DBAL\Schema\TableDiff('@blog_post', [], [], $oldColumns);
            $util->alterTable($tableDiff);
        }

        return '0000-00-00_init';
    }

];
