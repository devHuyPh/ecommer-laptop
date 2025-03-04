<div class="banner-img wow animate__animated animate__fadeInUp {{ $class ?? '' }}" @if (!empty($loop)) data-wow-delay="{{ $loop->iteration * 2 / 10 }}" @endif>
    {!! AdsManager::displayAds($ads->key) !!}
    <div class="banner-text">
        <h4 @if (isset($shortcode) && $shortcode->text_color) style="color: {{ $shortcode->text_color }} !important;" @endif>{!! BaseHelper::clean(nl2br($ads->getMetaData('subtitle', true) ?: '')) !!}</h4>
        @if ($buttonText = $ads->getMetaData('button_text', true))
            <a href="{{ $ads->click_url }}" @if($ads->open_in_new_tab) target="_blank" @endif class="btn btn-xs">
                {{ $buttonText }} <i class="fi-rs-arrow-small-right"></i>
            </a>
        @endif
    </div>
</div>
