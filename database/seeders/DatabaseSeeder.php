<?php

namespace Database\Seeders;

use Botble\ACL\Database\Seeders\UserSeeder;
use Botble\Base\Supports\BaseSeeder;
use Botble\Ecommerce\Database\Seeders\CurrencySeeder;
use Botble\Ecommerce\Database\Seeders\ProductSpecificationSeeder;
use Botble\Ecommerce\Database\Seeders\ReviewSeeder;
use Botble\Ecommerce\Database\Seeders\ShippingSeeder;
use Botble\Ecommerce\Database\Seeders\TaxSeeder;
use Botble\Language\Database\Seeders\LanguageSeeder;

class DatabaseSeeder extends BaseSeeder
{
    public function run(): void
    {
        $this->prepareRun();

        $this->call([
            LanguageSeeder::class,
            FaqSeeder::class,
            BrandSeeder::class,
            CurrencySeeder::class,
            ProductCategorySeeder::class,
            ProductCollectionSeeder::class,
            ProductLabelSeeder::class,
            ProductTagSeeder::class,
            ProductAttributeSeeder::class,
            ProductSeeder::class,
            TaxSeeder::class,
            CustomerSeeder::class,
            ReviewSeeder::class,
            ShippingSeeder::class,
            StoreLocatorSeeder::class,
            FlashSaleSeeder::class,
            SimpleSliderSeeder::class,
            BlogSeeder::class,
            PageSeeder::class,
            UserSeeder::class,
            SettingSeeder::class,
            ProductSpecificationSeeder::class,
            AdsSeeder::class,
            WidgetSeeder::class,
            ThemeOptionSeeder::class,
            ProductOptionSeeder::class,
            MarketplaceSeeder::class,
            MenuSeeder::class,
        ]);

        $this->finished();
    }
}
