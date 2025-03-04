<div class="mb-3">
    <label class="form-label">{{ __('Show newsletter form') }}</label>
    {!! Form::customSelect('show_newsletter_form', ['yes' => __('Yes'), 'no' => __('No')], Arr::get($attributes, 'show_newsletter_form')) !!}
</div>
