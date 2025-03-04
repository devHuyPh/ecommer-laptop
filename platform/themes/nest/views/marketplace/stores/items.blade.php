<div class="list-content-loading m-0">
    <div class="half-circle-spinner">
        <div class="circle circle-1"></div>
        <div class="circle circle-2"></div>
    </div>
</div>

<input type="hidden" name="page" data-value="{{ $products->currentPage() }}">
<input type="hidden" name="sort-by" value="{{ BaseHelper::stringify(request()->input('sort-by')) }}">
<input type="hidden" name="num" value="{{ BaseHelper::stringify((int)request()->input('num')) }}">

<div class="shop-product-filter">
    <div class="total-product">
        <p>{!! BaseHelper::clean(__('We found :total items for you!', ['total' => '<strong class="text-brand">' . $products->total() . '</strong>'])) !!}</p>
    </div>
    @include(Theme::getThemeNamespace('views/ecommerce/includes/sort'))
</div>

@if (theme_option('vendor_page_detail_layout') == 'list')
    <div class="product-list mb-50">
        @forelse ($products as $product)
            @include(Theme::getThemeNamespace('views.ecommerce.includes.product-item-list'), compact('product'))
        @empty
            <div class="mt-60 mb-60 text-center">
                <p>{{ __('No products found!') }}</p>
            </div>
        @endforelse
    </div>
@else
    @if ($products->isNotEmpty())
        @include(Theme::getThemeNamespace() . '::views.ecommerce.includes.product-items-loop', ['products' => $products, 'perRow' => 4])
    @else
        <div class="mt__60 mb__60 text-center">
            <p>{{ __('No products found!') }}</p>
        </div>
    @endif
@endif

{!! $products->withQueryString()->links(Theme::getThemeNamespace('partials.custom-pagination')) !!}
