<div class="row product-grid-{{ $perRow ?? 4 }}">
    @foreach($products as $product)
        <div class="col-xxl-3 col-xl-3 col-lg-6 col-md-6 mb-lg-0 mb-md-5 mb-sm-5 col-{{ theme_option('number_of_products_per_row_on_mobile', 2) == 2 ? 6 : 12 }}">
            @include(Theme::getThemeNamespace() . '::views.ecommerce.includes.product-item', compact('product'))
        </div>
    @endforeach
</div>
