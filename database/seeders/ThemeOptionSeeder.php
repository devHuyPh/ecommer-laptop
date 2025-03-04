<?php

namespace Database\Seeders;

use Botble\Base\Supports\BaseSeeder;
use Botble\Setting\Facades\Setting;
use Botble\Theme\Facades\ThemeOption;

class ThemeOptionSeeder extends BaseSeeder
{
    public function run(): void
    {
        Setting::newQuery()->where('key', 'LIKE', ThemeOption::getOptionKey('%'))->delete();

        Setting::set(
            ThemeOption::prepareFromArray([
                'site_title' => 'Nest - Laravel Multipurpose eCommerce Script',
                'seo_description' => 'Nest is an attractive Laravel multi-vendor eCommerce script specially designed for the multipurpose shops like mega store, grocery store, supermarket, organic shop, and online stores selling products like beverages, vegetables, fruits, ice creams, paste, herbs, juice, meat, cold drinks, sausages, cocktails, soft drinks, cookies…',
                'copyright' => 'Copyright © %Y Nest all rights reserved. Powered by Botble.',
                'favicon' => 'general/favicon.png',
                'logo' => 'general/logo.png',
                'seo_og_image' => 'general/open-graph-image.png',
                'address' => '562 Wellington Road, Street 32, San Francisco',
                'hotline' => '1900 - 888',
                'phone' => '+01 2222 365 /(+91) 01 2345 6789',
                'working_hours' => '10:00 - 18:00, Mon - Sat',
                'homepage_id' => '1',
                'blog_page_id' => '5',
                'cookie_consent_message' => 'Your experience on this site will be improved by allowing cookies ',
                'cookie_consent_learn_more_url' => '/cookie-policy',
                'cookie_consent_learn_more_text' => 'Cookie Policy',
                'payment_methods' => 'general/payment-methods.png',
                'number_of_cross_sale_product' => 4,
                'mobile-header-message' => '<span>Grand opening, <strong>up to 15%</strong> off all items. Only <strong>3 days</strong> left</span>',
                'blog_page_background' => 'general/header-bg.png',
                'blog_page_icon' => 'general/category-1.png',
                'login_background' => 'general/login-1.png',
                'number_of_products_per_page' => 12,
                'preloader_enabled' => 'yes',
                'preloader_version' => 'v2',
                'preloader_image' => 'general/loading.gif',
                'sticky_header_content_position' => 'middle',
                'social_links' => [
                    [
                        [
                            'key' => 'social-name',
                            'value' => 'Facebook',
                        ],
                        [
                            'key' => 'social-icon',
                            'value' => 'general/facebook.png',
                        ],
                        [
                            'key' => 'social-url',
                            'value' => 'https://www.facebook.com',
                        ],
                    ],
                    [
                        [
                            'key' => 'social-name',
                            'value' => 'Twitter',
                        ],
                        [
                            'key' => 'social-icon',
                            'value' => 'general/twitter.png',
                        ],
                        [
                            'key' => 'social-url',
                            'value' => 'https://www.twitter.com',
                        ],
                    ],
                    [
                        [
                            'key' => 'social-name',
                            'value' => 'Instagram',
                        ],
                        [
                            'key' => 'social-icon',
                            'value' => 'general/instagram.png',
                        ],
                        [
                            'key' => 'social-url',
                            'value' => 'https://www.instagram.com',
                        ],
                    ],
                    [
                        [
                            'key' => 'social-name',
                            'value' => 'Pinterest',
                        ],
                        [
                            'key' => 'social-icon',
                            'value' => 'general/pinterest.png',
                        ],
                        [
                            'key' => 'social-url',
                            'value' => 'https://www.pinterest.com',
                        ],
                    ],
                    [
                        [
                            'key' => 'social-name',
                            'value' => 'Youtube',
                        ],
                        [
                            'key' => 'social-icon',
                            'value' => 'general/youtube.png',
                        ],
                        [
                            'key' => 'social-url',
                            'value' => 'https://www.youtube.com',
                       ],
                    ],
                ],
                'header_messages' => [
                    [
                        [
                            'key' => 'icon',
                            'value' => 'fi-rs-bell',
                        ],
                        [
                            'key' => 'message',
                            'value' => '<b class="text-success"> Trendy 25</b> silver jewelry, save up 35% off today',
                        ],
                        [
                            'key' => 'link',
                            'value' => '/products',
                        ],
                        [
                            'key' => 'link_text',
                            'value' => 'Shop now',
                        ],
                    ],
                    [
                        [
                            'key' => 'icon',
                            'value' => 'fi-rs-asterisk',
                        ],
                        [
                            'key' => 'message',
                            'value' => '<b class="text-danger">Super Value Deals</b> - Save more with coupons',
                        ],
                        [
                            'key' => 'link',
                            'value' => '/products',
                        ],
                        [
                            'key' => 'link_text',
                            'value' => null,
                        ],
                    ],
                    [
                        [
                            'key' => 'icon',
                            'value' => 'fi-rs-angle-double-right',
                        ],
                        [
                            'key' => 'message',
                            'value' => 'Get great devices up to 50% off',
                        ],
                        [
                            'key' => 'link',
                            'value' => '/products',
                        ],
                        [
                            'key' => 'link_text',
                            'value' => 'View details',
                        ],
                    ],
                ],
                'contact_info_boxes' => [
                    [
                        [
                            'key' => 'name',
                            'value' => 'Head Office',
                        ],
                        [
                            'key' => 'address',
                            'value' => '205 North Michigan Avenue, Suite 810, Chicago, 60601, USA',
                        ],
                        [
                            'key' => 'phone',
                            'value' => '(+01) 234 567',
                        ],
                        [
                            'key' => 'email',
                            'value' => 'office@botble.com',
                        ],
                    ],
                    [
                        [
                            'key' => 'name',
                            'value' => 'Our Studio',
                        ],
                        [
                            'key' => 'address',
                            'value' => '205 North Michigan Avenue, Suite 810, Chicago, 60601, USA',
                        ],
                        [
                            'key' => 'phone',
                            'value' => '(+01) 234 567',
                        ],
                        [
                            'key' => 'email',
                            'value' => 'studio@botble.com',
                        ],
                    ],
                    [
                        [
                            'key' => 'name',
                            'value' => 'Our Shop',
                        ],
                        [
                            'key' => 'address',
                            'value' => '205 North Michigan Avenue, Suite 810, Chicago, 60601, USA',
                        ],
                        [
                            'key' => 'phone',
                            'value' => '(+01) 234 567',
                        ],
                        [
                            'key' => 'email',
                            'value' => 'shop@botble.com',
                        ],
                    ],
                ],
                'number_of_products_per_row' => 5,
            ])
        );

        Setting::save();
    }
}
