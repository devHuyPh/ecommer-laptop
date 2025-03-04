<?php

namespace Botble\Ecommerce\Database\Seeders\Traits;

use Botble\Setting\Facades\Setting;

trait HasEcommerceSettingsSeeder
{
    protected function saveEcommerceSettings(array $data = []): void
    {
        $settings = [
            'payment_cod_status' => true,
            'payment_cod_description' => 'Please pay money directly to the postman, if you choose cash on delivery method (COD).',
            'payment_bank_transfer_status' => true,
            'payment_bank_transfer_description' => 'Please send money to our bank account: ACB - 69270 213 19.',
            'payment_stripe_payment_type' => 'stripe_checkout',
            'plugins_ecommerce_customer_new_order_status' => false,
            'plugins_ecommerce_admin_new_order_status' => false,
            'ecommerce_is_enabled_support_digital_products' => true,
            'ecommerce_load_countries_states_cities_from_location_plugin' => false,
            'ecommerce_product_sku_format' => 'SF-2443-%s%s%s%s',
            'ecommerce_enable_product_specification' => true,
            ...$data,
        ];

        Setting::delete(array_keys($settings));

        Setting::set($settings)->save();
    }
}
