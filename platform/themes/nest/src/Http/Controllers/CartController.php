<?php

namespace Theme\Nest\Http\Controllers;

use Botble\Ecommerce\Http\Controllers\Fronts\PublicCartController;
use Botble\Ecommerce\Http\Requests\CartRequest;
use Botble\Ecommerce\Http\Requests\UpdateCartRequest;
use Botble\Theme\Facades\Theme;

class CartController extends PublicCartController
{
    public function store(CartRequest $request)
    {
        $response = parent::store($request);

        $response->setAdditional([
            'html' => Theme::partial('cart-panel'),
        ]);

        return $response;
    }

    public function update(UpdateCartRequest $request)
    {
        $response = parent::update($request);

        [$products, $promotionDiscountAmount, $couponDiscountAmount] = $this->getCartData();

        $crossSellProducts = collect();

        $response->setAdditional([
            'html' => Theme::partial('cart-panel'),
            'cart_content' => view(Theme::getThemeNamespace('views.ecommerce.cart'), compact('promotionDiscountAmount', 'couponDiscountAmount', 'products', 'crossSellProducts'))->render(),
        ]);

        return $response;
    }

    public function destroy(string $id)
    {
        $response = parent::destroy($id);

        [$products, $promotionDiscountAmount, $couponDiscountAmount] = $this->getCartData();

        $crossSellProducts = collect();

        $response->setAdditional([
            'html' => Theme::partial('cart-panel'),
            'cart_content' => view(Theme::getThemeNamespace('views.ecommerce.cart'), compact('promotionDiscountAmount', 'couponDiscountAmount', 'products', 'crossSellProducts'))->render(),
        ]);

        return $response;
    }
}
