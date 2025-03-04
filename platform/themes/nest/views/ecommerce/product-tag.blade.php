@include(Theme::getThemeNamespace() . '::views.ecommerce.products', [
    'filterURL' => $tag->url,
    'pageName' => $tag->name,
    'pageDescription' => $tag->description,
])
