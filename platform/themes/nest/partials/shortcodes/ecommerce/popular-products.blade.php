<section class="product-tabs section-padding position-relative">
    <div class="container">
        <div class="section-title style-2 wow animate__animated animate__fadeIn">
            <div class="title">
                <h3>{!! BaseHelper::clean($shortcode->title) !!}</h3>
            </div>
        </div>

        @include(Theme::getThemeNamespace() . '::views.ecommerce.includes.product-items-loop', ['products' => $products, 'perRow' => (int)$shortcode->per_row > 0 ? (int)$shortcode->per_row : 4])
    </div>
</section>
