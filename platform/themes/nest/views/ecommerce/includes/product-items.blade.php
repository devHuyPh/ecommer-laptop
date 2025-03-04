<div class="list-content-loading">
    <div class="half-circle-spinner">
        <div class="circle circle-1"></div>
        <div class="circle circle-2"></div>
    </div>
</div>

<input type="hidden" name="page" data-value="{{ $products instanceof \Illuminate\Contracts\Pagination\LengthAwarePaginator ? $products->currentPage() : 1 }}">
<input type="hidden" name="sort-by" value="{{ BaseHelper::stringify(request()->input('sort-by')) }}">
<input type="hidden" name="num" value="{{ BaseHelper::stringify(request()->input('num')) }}">
<input type="hidden" name="q" value="{{ BaseHelper::stringify(request()->input('q')) }}">

@if ($products->isNotEmpty())
    <div class="shop-product-filter">
        <div class="total-product">
            <p>{!! BaseHelper::clean(__('We found :total items for you!', ['total' => '<strong class="text-brand">' . $products->total() . '</strong>'])) !!}</p>
        </div>

        @include(Theme::getThemeNamespace() . '::views/ecommerce/includes/sort')
    </div>
@endif

@if ($products->isNotEmpty())
    @include(Theme::getThemeNamespace() . '::views.ecommerce.includes.product-items-loop', ['products' => $products, 'perRow' => theme_option('number_of_products_per_row', 4)])
@else
    <div class="mt__60 mb__60 text-center">
        <p>{{ __('No products found!') }}</p>
    </div>
@endif

@if ($products instanceof \Illuminate\Contracts\Pagination\LengthAwarePaginator && $products->hasPages())
    <br>
    {!! $products->withQueryString()->links(Theme::getThemeNamespace() . '::partials.custom-pagination') !!}
@endif
