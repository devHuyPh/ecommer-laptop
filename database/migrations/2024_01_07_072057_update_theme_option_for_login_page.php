<?php

use Botble\Theme\Facades\ThemeOption;
use Illuminate\Database\Migrations\Migration;

return new class () extends Migration
{
    public function up(): void
    {
        ThemeOption::setOption('login_background', theme_option('image_in_login_page'));
        ThemeOption::saveOptions();
    }
};
