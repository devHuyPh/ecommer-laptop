<?php

app()->booted(function () {
    theme_option()
        ->setField([
            'id' => 'preloader_enabled',
            'section_id' => 'opt-text-subsection-general',
            'type' => 'customSelect',
            'label' => __('Enable Preloader?'),
            'attributes' => [
                'name' => 'preloader_enabled',
                'list' => [
                    'yes' => trans('core/base::base.yes'),
                    'no' => trans('core/base::base.no'),
                ],
                'value' => 'yes',
                'options' => [
                    'class' => 'form-select',
                ],
            ],
        ])
        ->setField([
            'id' => 'preloader_version',
            'section_id' => 'opt-text-subsection-general',
            'type' => 'customSelect',
            'label' => __('Preloader Version?'),
            'attributes' => [
                'name' => 'preloader_version',
                'list' => [
                    'v1' => 'V1',
                    'v2' => 'V2',
                ],
                'value' => 'v1',
                'options' => [
                    'class' => 'form-select',
                ],
            ],
        ])
        ->setField([
            'id' => 'preloader_image',
            'section_id' => 'opt-text-subsection-general',
            'type' => 'mediaImage',
            'label' => __('Preloader image'),
            'attributes' => [
                'name' => 'preloader_image',
                'value' => null,
            ],
        ])
        ->setField([
            'id' => 'animation_enabled',
            'section_id' => 'opt-text-subsection-general',
            'type' => 'customSelect',
            'label' => __('Enable animation?'),
            'attributes' => [
                'name' => 'animation_enabled',
                'list' => [
                    'yes' => trans('core/base::base.yes'),
                    'no' => trans('core/base::base.no'),
                ],
                'value' => 'yes',
                'options' => [
                    'class' => 'form-select',
                ],
            ],
        ])
        ->setField([
            'id' => 'hotline',
            'section_id' => 'opt-text-subsection-general',
            'type' => 'text',
            'label' => __('Hotline'),
            'attributes' => [
                'name' => 'hotline',
                'value' => null,
                'options' => [
                    'class' => 'form-control',
                    'placeholder' => __('Hotline'),
                    'data-counter' => 30,
                ],
            ],
        ])
        ->setSection([
            'title' => __('Social links'),
            'desc' => __('Social links'),
            'id' => 'opt-text-subsection-social-links',
            'subsection' => true,
            'icon' => 'ti ti-share',
        ])
        ->setField([
            'id' => 'social_links',
            'section_id' => 'opt-text-subsection-social-links',
            'type' => 'repeater',
            'label' => __('Social links'),
            'attributes' => [
                'name' => 'social_links',
                'value' => null,
                'fields' => [
                    [
                        'type' => 'text',
                        'label' => __('Name'),
                        'attributes' => [
                            'name' => 'social-name',
                            'value' => null,
                            'options' => [
                                'class' => 'form-control',
                            ],
                        ],
                    ],
                    [
                        'type' => 'mediaImage',
                        'label' => __('Icon Image'),
                        'attributes' => [
                            'name' => 'social-icon',
                            'value' => null,
                            'options' => [
                                'class' => 'form-control',
                            ],
                        ],
                    ],
                    [
                        'type' => 'text',
                        'label' => __('URL'),
                        'attributes' => [
                            'name' => 'social-url',
                            'value' => null,
                            'options' => [
                                'class' => 'form-control',
                            ],
                        ],
                    ],
                ],
            ],
        ])
        ->setField([
            'id' => 'subscribe_social_description',
            'section_id' => 'opt-text-subsection-social-links',
            'type' => 'text',
            'label' => __('Subscribe social network description'),
            'attributes' => [
                'name' => 'subscribe_social_description',
                'value' => __('Up to 15% discount on your first subscribe'),
                'options' => [
                    'class' => 'form-control',
                    'placeholder' => __('e.g: Follow us on social network'),
                    'data-counter' => 255,
                ],
            ],
        ])
        ->setSection([
            'title' => __('Header messages'),
            'desc' => __('Header messages'),
            'id' => 'opt-text-subsection-header-messages',
            'subsection' => true,
            'icon' => 'ti ti-bell',
        ])
        ->setField([
            'id' => 'mobile-header-message',
            'section_id' => 'opt-text-subsection-header-messages',
            'type' => 'text',
            'label' => __('Mobile header message'),
            'attributes' => [
                'name' => 'mobile-header-message',
                'value' => null,
                'options' => [
                    'class' => 'form-control',
                    'placeholder' => __('Message on the header on mobile device'),
                    'data-counter' => 255,
                ],
            ],
        ])
        ->setField([
            'id' => 'header_messages',
            'section_id' => 'opt-text-subsection-header-messages',
            'type' => 'repeater',
            'label' => __('Header messages'),
            'clean_tags' => false,
            'attributes' => [
                'name' => 'header_messages',
                'value' => null,
                'fields' => [
                    [
                        'type' => 'themeIcon',
                        'label' => __('Icon'),
                        'attributes' => [
                            'name' => 'icon',
                            'value' => null,
                            'options' => [
                                'class' => 'form-control',
                            ],
                        ],
                    ],
                    [
                        'type' => 'text',
                        'label' => __('Message'),
                        'attributes' => [
                            'name' => 'message',
                            'value' => null,
                            'options' => [
                                'class' => 'form-control',
                            ],
                        ],
                    ],
                    [
                        'type' => 'text',
                        'label' => __('Link'),
                        'attributes' => [
                            'name' => 'link',
                            'value' => null,
                            'options' => [
                                'class' => 'form-control',
                            ],
                        ],
                    ],
                    [
                        'type' => 'text',
                        'label' => __('Link Text'),
                        'attributes' => [
                            'name' => 'link_text',
                            'value' => null,
                            'options' => [
                                'class' => 'form-control',
                            ],
                        ],
                    ],
                ],
            ],
        ])
        ->setSection([
            'title' => __('Contact info boxes'),
            'desc' => __('Contact info boxes'),
            'id' => 'opt-contact',
            'subsection' => false,
            'icon' => 'ti ti-info-circle',
            'fields' => [],
        ])
        ->setField([
            'id' => 'contact_info_boxes',
            'section_id' => 'opt-contact',
            'type' => 'repeater',
            'label' => __('Contact info boxes'),
            'attributes' => [
                'name' => 'contact_info_boxes',
                'value' => null,
                'fields' => [
                    [
                        'type' => 'text',
                        'label' => __('Name'),
                        'attributes' => [
                            'name' => 'name',
                            'value' => null,
                            'options' => [
                                'class' => 'form-control',
                            ],
                        ],
                    ],
                    [
                        'type' => 'text',
                        'label' => __('Address'),
                        'attributes' => [
                            'name' => 'address',
                            'value' => null,
                            'options' => [
                                'class' => 'form-control',
                            ],
                        ],
                    ],
                    [
                        'type' => 'text',
                        'label' => __('Phone'),
                        'attributes' => [
                            'name' => 'phone',
                            'value' => null,
                            'options' => [
                                'class' => 'form-control',
                            ],
                        ],
                    ],
                    [
                        'type' => 'email',
                        'label' => __('Email'),
                        'attributes' => [
                            'name' => 'email',
                            'value' => null,
                            'options' => [
                                'class' => 'form-control',
                            ],
                        ],
                    ],
                ],
            ],
        ])
        ->setField([
            'id' => 'blog_single_layout',
            'section_id' => 'opt-text-subsection-blog',
            'type' => 'customSelect',
            'label' => __('Default Blog Single Layout'),
            'attributes' => [
                'name' => 'blog_single_layout',
                'list' => get_blog_single_layouts(),
                'value' => 'blog-right-sidebar',
                'options' => [
                    'class' => 'form-select',
                ],
            ],
        ])
        ->setField([
            'id' => 'blog_page_background',
            'section_id' => 'opt-text-subsection-blog',
            'type' => 'mediaImage',
            'label' => __('Header Background on Blog Page'),
            'attributes' => [
                'name' => 'blog_page_background',
                'value' => null,
            ],
        ])
        ->setField([
            'id' => 'blog_page_icon',
            'section_id' => 'opt-text-subsection-blog',
            'type' => 'mediaImage',
            'label' => __('Icon of Blog page'),
            'attributes' => [
                'name' => 'blog_page_icon',
                'value' => null,
            ],
        ])
        ->setField([
            'id' => 'product_single_layout',
            'section_id' => 'opt-text-subsection-ecommerce',
            'type' => 'customSelect',
            'label' => __('Default Product Single Layout'),
            'attributes' => [
                'name' => 'product_single_layout',
                'list' => get_product_single_layouts(),
                'value' => 'product-right-sidebar',
                'options' => [
                    'class' => 'form-select',
                ],
            ],
        ])
        ->setField([
            'id' => 'product_list_layout',
            'section_id' => 'opt-text-subsection-ecommerce',
            'type' => 'customSelect',
            'label' => __('Default Product List Layout'),
            'attributes' => [
                'name' => 'product_list_layout',
                'list' => get_product_single_layouts(),
                'value' => 'product-full-width',
                'options' => [
                    'class' => 'form-select',
                ],
            ],
        ])
        ->setField([
            'id' => 'number_of_products_per_row',
            'section_id' => 'opt-text-subsection-ecommerce',
            'type' => 'customSelect',
            'label' => __('Number of products per row'),
            'attributes' => [
                'name' => 'number_of_products_per_row',
                'list' => [
                    2 => 2,
                    3 => 3,
                    4 => 4,
                    5 => 5,
                    6 => 6,
                ],
                'value' => 4,
                'options' => [
                    'class' => 'form-select',
                ],
            ],
        ])
        ->setField([
            'id' => 'number_of_products_per_row_on_mobile',
            'section_id' => 'opt-text-subsection-ecommerce',
            'type' => 'customSelect',
            'label' => __('Number of products per row on mobile screen'),
            'attributes' => [
                'name' => 'number_of_products_per_row_on_mobile',
                'list' => [
                    1 => 1,
                    2 => 2,
                ],
                'value' => 2,
                'options' => [
                    'class' => 'form-select',
                ],
            ],
        ])
        ->setSection([
            'title' => __('Style'),
            'desc' => __('Style of page'),
            'id' => 'opt-text-subsection-style',
            'subsection' => true,
            'icon' => 'ti ti-brush',
        ])
        ->setField([
            'id' => 'font_text',
            'section_id' => 'opt-text-subsection-style',
            'type' => 'googleFonts',
            'label' => __('Font text'),
            'attributes' => [
                'name' => 'font_text',
                'value' => 'Lato',
            ],
        ])
        ->setField([
            'id' => 'font_heading',
            'section_id' => 'opt-text-subsection-style',
            'type' => 'googleFonts',
            'label' => __('Font heading'),
            'attributes' => [
                'name' => 'font_heading',
                'value' => 'Lato',
            ],
        ])
        ->setField([
            'id' => 'heading_font_size',
            'section_id' => 'opt-text-subsection-style',
            'type' => 'number',
            'label' => __('Heading font size (px)'),
            'attributes' => [
                'name' => 'heading_font_size',
                'value' => 32,
                'options' => [
                    'class' => 'form-control',
                ],
            ],
        ])
        ->setField([
            'id' => 'body_font_size',
            'section_id' => 'opt-text-subsection-style',
            'type' => 'number',
            'label' => __('Body font size (px)'),
            'attributes' => [
                'name' => 'body_font_size',
                'value' => 16,
                'options' => [
                    'class' => 'form-control',
                ],
            ],
        ])
        ->setField([
            'id' => 'header_style',
            'section_id' => 'opt-text-subsection-style',
            'type' => 'customSelect',
            'label' => __('Header style'),
            'attributes' => [
                'name' => 'header_style',
                'list' => get_layout_header_styles(),
                'value' => 'default',
                'options' => [
                    'class' => 'form-select',
                ],
            ],
        ])
        ->setField([
            'id' => 'color_brand',
            'section_id' => 'opt-text-subsection-style',
            'type' => 'customColor',
            'label' => __('Color brand'),
            'attributes' => [
                'name' => 'color_brand',
                'value' => '#3BB77E',
            ],
        ])
        ->setField([
            'id' => 'color_brand_dark',
            'section_id' => 'opt-text-subsection-style',
            'type' => 'customColor',
            'label' => __('Color brand dark'),
            'attributes' => [
                'name' => 'color_brand_dark',
                'value' => '#29A56C',
            ],
        ])
        ->setField([
            'id' => 'color_brand_2',
            'section_id' => 'opt-text-subsection-style',
            'type' => 'customColor',
            'label' => __('Color brand 2'),
            'attributes' => [
                'name' => 'color_brand_2',
                'value' => '#FDC040',
            ],
        ])
        ->setField([
            'id' => 'color_primary',
            'section_id' => 'opt-text-subsection-style',
            'type' => 'customColor',
            'label' => __('Primary color'),
            'attributes' => [
                'name' => 'color_primary',
                'value' => '#5a97fa',
            ],
        ])
        ->setField([
            'id' => 'color_secondary',
            'section_id' => 'opt-text-subsection-style',
            'type' => 'customColor',
            'label' => __('Secondary color'),
            'attributes' => [
                'name' => 'color_secondary',
                'value' => '#3e5379',
            ],
        ])
        ->setField([
            'id' => 'color_warning',
            'section_id' => 'opt-text-subsection-style',
            'type' => 'customColor',
            'label' => __('Warning color'),
            'attributes' => [
                'name' => 'color_warning',
                'value' => '#ff9900',
            ],
        ])
        ->setField([
            'id' => 'color_danger',
            'section_id' => 'opt-text-subsection-style',
            'type' => 'customColor',
            'label' => __('Danger color'),
            'attributes' => [
                'name' => 'color_danger',
                'value' => '#FD6E6E',
            ],
        ])
        ->setField([
            'id' => 'color_success',
            'section_id' => 'opt-text-subsection-style',
            'type' => 'customColor',
            'label' => __('Success color'),
            'attributes' => [
                'name' => 'color_success',
                'value' => '#81B13D',
            ],
        ])
        ->setField([
            'id' => 'color_info',
            'section_id' => 'opt-text-subsection-style',
            'type' => 'customColor',
            'label' => __('Info color'),
            'attributes' => [
                'name' => 'color_info',
                'value' => '#2cc1d8',
            ],
        ])
        ->setField([
            'id' => 'color_text',
            'section_id' => 'opt-text-subsection-style',
            'type' => 'customColor',
            'label' => __('Text color'),
            'attributes' => [
                'name' => 'color_text',
                'value' => '#7E7E7E',
            ],
        ])
        ->setField([
            'id' => 'color_heading',
            'section_id' => 'opt-text-subsection-style',
            'type' => 'customColor',
            'label' => __('Heading color'),
            'attributes' => [
                'name' => 'color_heading',
                'value' => '#253D4E',
            ],
        ])
        ->setField([
            'id' => 'color_grey_1',
            'section_id' => 'opt-text-subsection-style',
            'type' => 'customColor',
            'label' => __('Grey 1'),
            'attributes' => [
                'name' => 'color_grey_1',
                'value' => '#253D4E',
            ],
        ])
        ->setField([
            'id' => 'color_grey_2',
            'section_id' => 'opt-text-subsection-style',
            'type' => 'customColor',
            'label' => __('Grey 2'),
            'attributes' => [
                'name' => 'color_grey_2',
                'value' => '#242424',
            ],
        ])
        ->setField([
            'id' => 'color_grey_4',
            'section_id' => 'opt-text-subsection-style',
            'type' => 'customColor',
            'label' => __('Grey 4'),
            'attributes' => [
                'name' => 'color_grey_4',
                'value' => '#adadad',
            ],
        ])
        ->setField([
            'id' => 'color_grey_9',
            'section_id' => 'opt-text-subsection-style',
            'type' => 'customColor',
            'label' => __('Grey 9'),
            'attributes' => [
                'name' => 'color_grey_9',
                'value' => '#f4f5f9',
            ],
        ])
        ->setField([
            'id' => 'color_muted',
            'section_id' => 'opt-text-subsection-style',
            'type' => 'customColor',
            'label' => __('Muted color'),
            'attributes' => [
                'name' => 'color_muted',
                'value' => '#B6B6B6',
            ],
        ])
        ->setField([
            'id' => 'color_body',
            'section_id' => 'opt-text-subsection-style',
            'type' => 'customColor',
            'label' => __('Body color'),
            'attributes' => [
                'name' => 'color_body',
                'value' => '#7E7E7E',
            ],
        ])
        ->setField([
            'id' => 'facebook_comment_enabled_in_product',
            'section_id' => 'opt-text-subsection-facebook-integration',
            'type' => 'customSelect',
            'label' => __('Enable Facebook comment in product detail page?'),
            'attributes' => [
                'name' => 'facebook_comment_enabled_in_product',
                'list' => [
                    'no' => trans('core/base::base.no'),
                    'yes' => trans('core/base::base.yes'),
                ],
                'value' => 'no',
                'options' => [
                    'class' => 'form-select',
                ],
            ],
        ])
        ->setField([
            'id' => 'enabled_browse_categories_on_header',
            'section_id' => 'opt-text-subsection-general',
            'type' => 'customSelect',
            'label' => __('Enable Browse Categories button on header?'),
            'attributes' => [
                'name' => 'enabled_browse_categories_on_header',
                'list' => [
                    'yes' => trans('core/base::base.yes'),
                    'no' => trans('core/base::base.no'),
                ],
                'value' => 'yes',
                'options' => [
                    'class' => 'form-select',
                ],
            ],
        ])
        ->setField([
            'id' => 'enabled_sticky_header',
            'section_id' => 'opt-text-subsection-general',
            'type' => 'customSelect',
            'label' => __('Enable sticky header?'),
            'attributes' => [
                'name' => 'enabled_sticky_header',
                'list' => [
                    'yes' => trans('core/base::base.yes'),
                    'no' => trans('core/base::base.no'),
                ],
                'value' => 'yes',
                'options' => [
                    'class' => 'form-select',
                ],
            ],
        ])
        ->setField([
            'id' => 'sticky_header_content_position',
            'section_id' => 'opt-text-subsection-general',
            'type' => 'customSelect',
            'label' => __('Sticky header content position?'),
            'attributes' => [
                'name' => 'sticky_header_content_position',
                'list' => [
                    'bottom' => __('Header bottom'),
                    'middle' => __('Header middle'),
                ],
                'value' => 'middle',
                'options' => [
                    'class' => 'form-control',
                ],
            ],
        ])
        ->setField([
            'id' => 'vendor_page_detail_layout',
            'section_id' => 'opt-text-subsection-marketplace',
            'type' => 'customSelect',
            'label' => __('Vendor Store Layout'),
            'attributes' => [
                'name' => 'vendor_page_detail_layout',
                'list' => [
                    'list' => __('List'),
                    'grid' => __('Grid'),
                ],
                'value' => 'grid',
                'options' => [
                    'class' => 'form-select',
                ],
            ],
        ]);
});
