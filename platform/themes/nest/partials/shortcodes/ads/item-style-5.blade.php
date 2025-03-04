<div class="banner-img style-5 mt-5 mt-md-30">
    {!! AdsManager::displayAds($ads->key) !!}
    <div class="banner-text">
        <h5 class="mb-20" @if (isset($shortcode) && $shortcode->text_color) style="color: {{ $shortcode->text_color }} !important;" @endif>{!! BaseHelper::clean(nl2br($ads->getMetaData('subtitle', true) ?: '')) !!}</h5>
        @if ($buttonText = $ads->getMetaData('button_text', true))
            <a href="{{ $ads->click_url }}" @if($ads->open_in_new_tab) target="_blank" @endif class="btn btn-xs">
                {{ $buttonText }} <i class="fi-rs-arrow-small-right"></i>
            </a>
        @endif
    </div>
</div>
