<section class="bg-grey-9 section-padding-60 product-tabs">
    <div class="container">
        <div class="heading-tab d-flex">
            <div class="heading-tab-left wow fadeIn animated">
                <h3 class="section-title mb-35">{{ $category->name }}</h3>
            </div>
            <div class="heading-tab-right wow fadeIn animated">
                <ul class="nav nav-tabs right no-border" role="tablist">
                    @if($category->activeChildren->isNotEmpty())
                        <li class="nav-item" role="presentation">
                            <button class="nav-link active" type="button" data-url="{{ route('public.ajax.products-by-category', $category->id) }}?limit={{ $limit }}" role="tab" aria-controls="product-collections-tab" aria-selected="true">{{ __('All') }}</button>
                        </li>

                        @foreach($category->activeChildren as $item)
                            <li class="nav-item" role="presentation">
                                <button class="nav-link" type="button" data-url="{{ route('public.ajax.products-by-category', $item->id) }}?limit={{ $limit }}" role="tab" aria-controls="product-categories-product" aria-selected="true">{{ $item->name }}</button>
                            </li>
                        @endforeach
                    @else
                        <li class="nav-item">
                            <a class="nav-link active" href="{{ $category->url }}">{{ __('View All') }}</a>
                        </li>
                    @endif
                </ul>
            </div>
        </div>
        <div class="tab-content wow fadeIn animated">
            <div class="half-circle-spinner loading-spinner d-none">
                <div class="circle circle-1"></div>
                <div class="circle circle-2"></div>
            </div>

            <div class="tab-pane fade show active" id="product-categories-product" role="tabpanel" aria-labelledby="product-categories-product-tab">
                @include(Theme::getThemeNamespace() . '::views.ecommerce.includes.product-items-loop', ['products' => $products, 'perRow' => $perRow])
            </div>
        </div>
    </div>
</section>
