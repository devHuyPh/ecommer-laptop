<?php

use Botble\Base\Facades\BaseHelper;
use Botble\Theme\Facades\Theme;
use Illuminate\Database\Migrations\Migration;
use Illuminate\Support\Facades\File;

return new class () extends Migration {
    public function up(): void
    {
        try {
            $galleryWidget = BaseHelper::joinPaths([
                theme_path(Theme::getThemeName()),
                'widgets',
                'gallery',
            ]);

            if (! is_plugin_active('gallery') && File::isDirectory($galleryWidget)) {
                File::deleteDirectory($galleryWidget);
            }
        } catch (Throwable) {
        }
    }
};
