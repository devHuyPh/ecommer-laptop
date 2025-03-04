<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class () extends Migration {
    public function up(): void
    {
        Schema::table('ec_specification_groups', function (Blueprint $table) {
            $table->nullableMorphs('author');
        });

        Schema::table('ec_specification_attributes', function (Blueprint $table) {
            $table->nullableMorphs('author');
        });

        Schema::table('ec_specification_tables', function (Blueprint $table) {
            $table->nullableMorphs('author');
        });
    }

    public function down(): void
    {
        Schema::table('ec_specification_groups', function (Blueprint $table) {
            $table->dropMorphs('author');
        });

        Schema::table('ec_specification_attributes', function (Blueprint $table) {
            $table->dropMorphs('author');
        });

        Schema::table('ec_specification_tables', function (Blueprint $table) {
            $table->dropMorphs('author');
        });
    }
};
