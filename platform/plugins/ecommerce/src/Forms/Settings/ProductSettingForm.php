<?php

namespace Botble\Ecommerce\Forms\Settings;

use Botble\Base\Forms\FieldOptions\CheckboxFieldOption;
use Botble\Base\Forms\FieldOptions\OnOffFieldOption;
use Botble\Base\Forms\FieldOptions\TextFieldOption;
use Botble\Base\Forms\Fields\OnOffCheckboxField;
use Botble\Base\Forms\Fields\TextField;
use Botble\Ecommerce\Facades\EcommerceHelper;
use Botble\Ecommerce\Http\Requests\Settings\ProductSettingRequest;
use Botble\Setting\Forms\SettingForm;

class ProductSettingForm extends SettingForm
{
    public function setup(): void
    {
        parent::setup();

        $this
            ->setSectionTitle(trans('plugins/ecommerce::setting.product.product_settings'))
            ->setSectionDescription(trans('plugins/ecommerce::setting.product.product_settings_description'))
            ->setValidatorClass(ProductSettingRequest::class)
            ->add('how_to_display_product_variation_images', 'customRadio', [
                'label' => trans('plugins/ecommerce::setting.product.form.how_to_display_product_variation_images'),
                'values' => [
                    'only_variation_images' => trans('plugins/ecommerce::setting.product.form.only_variation_images'),
                    'variation_images_and_main_product_images' => trans(
                        'plugins/ecommerce::setting.product.form.variation_images_and_main_product_images',
                    ),
                ],
                'value' => get_ecommerce_setting('how_to_display_product_variation_images', 'only_variation_images'),
            ])
            ->add('show_number_of_products', OnOffCheckboxField::class, [
                'label' => trans('plugins/ecommerce::setting.product.form.show_number_of_products'),
                'value' => EcommerceHelper::showNumberOfProductsInProductSingle(),
            ])
            ->add('show_out_of_stock_products', OnOffCheckboxField::class, [
                'label' => trans('plugins/ecommerce::setting.product.form.show_out_of_stock_products'),
                'value' => EcommerceHelper::showOutOfStockProducts(),
            ])
            ->add('is_enabled_product_options', OnOffCheckboxField::class, [
                'label' => trans('plugins/ecommerce::setting.product.form.enable_product_options'),
                'value' => EcommerceHelper::isEnabledProductOptions(),
            ])
            ->add('is_enabled_cross_sale_products', OnOffCheckboxField::class, [
                'label' => trans('plugins/ecommerce::setting.product.form.is_enabled_cross_sale_products'),
                'value' => EcommerceHelper::isEnabledCrossSaleProducts(),
            ])
            ->add('is_enabled_related_products', OnOffCheckboxField::class, [
                'label' => trans('plugins/ecommerce::setting.product.form.is_enabled_related_products'),
                'value' => EcommerceHelper::isEnabledRelatedProducts(),
            ])
            ->add(
                'enable_product_specification',
                OnOffCheckboxField::class,
                CheckboxFieldOption::make()
                    ->label(trans('plugins/ecommerce::setting.product.form.enable_product_specification'))
                    ->helperText(trans('plugins/ecommerce::setting.product.form.enable_product_specification_help'))
                    ->value(EcommerceHelper::isProductSpecificationEnabled())
            )
            ->add(
                'auto_generate_product_sku',
                OnOffCheckboxField::class,
                OnOffFieldOption::make()
                    ->label(trans('plugins/ecommerce::setting.product.form.auto_generate_product_sku'))
                    ->value($targetValue = get_ecommerce_setting('auto_generate_product_sku', true))
            )
            ->addOpenCollapsible('auto_generate_product_sku', '1', $targetValue == '1')
            ->add(
                'product_sku_format',
                TextField::class,
                TextFieldOption::make()
                    ->label(trans('plugins/ecommerce::setting.product.form.product_sku_format'))
                    ->value(get_ecommerce_setting('product_sku_format', null))
                    ->helperText(trans('plugins/ecommerce::setting.product.form.product_sku_format_helper'))
            )
            ->addCloseCollapsible('auto_generate_product_sku', '1')
            ->add(
                'make_product_barcode_required',
                OnOffCheckboxField::class,
                OnOffFieldOption::make()
                    ->label(trans('plugins/ecommerce::setting.product.form.make_product_barcode_required'))
                    ->helperText(trans('plugins/ecommerce::setting.product.form.make_product_barcode_required_helper'))
                    ->value(get_ecommerce_setting('make_product_barcode_required', false))
            );
    }
}
