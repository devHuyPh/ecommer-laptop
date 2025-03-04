<div class="mb-3">
    <label class="form-label">{{ __('Title') }}</label>
    <input type="text" name="title" value="{{ Arr::get($attributes, 'title') }}" class="form-control" placeholder="Title">
</div>

<div class="mb-3">
    <label class="form-label">{{ __('Scroll display items') }}</label>
    {!! Form::customSelect('scroll_items', array_combine([6, 7, 8, 9, 10], [6, 7, 8, 9, 10]), Arr::get($attributes, 'scroll_items', 10)) !!}
</div>

<div class="mb-3">
    <label class="form-label">{{ __('Show products count?') }}</label>
    <select name="show_products_count" class="form-select">
        <option value="no"
                @if (Arr::get($attributes, 'show_products_count', $defaultAutoplay ?? 'yes') == 'no') selected @endif>{{ trans('core/base::base.no') }}</option>
        <option value="yes"
                @if (Arr::get($attributes, 'show_products_count', $defaultAutoplay ?? 'yes') == 'yes') selected @endif>{{ trans('core/base::base.yes') }}</option>
    </select>
</div>

{!! Theme::partial('shortcodes.includes.autoplay-settings', compact('attributes')) !!}
