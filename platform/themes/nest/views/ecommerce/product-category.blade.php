@include(Theme::getThemeNamespace() . '::views.ecommerce.products', [
    'filterURL' => $category->url,
    'pageName' => $category->name,
    'pageDescription' => $category->description,
])
