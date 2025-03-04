@include(Theme::getThemeNamespace() . '::views.ecommerce.products', [
    'filterURL' => $brand->url,
    'pageName' => $brand->name,
    'pageDescription' => $brand->description,
])
