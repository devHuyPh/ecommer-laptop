<div class="mb-3">
    <label for="layout" class="form-label">{{ __('Layout') }}</label>
    {!! Form::customSelect('layout', get_product_single_layouts(), $layout, ['class' => 'form-control']) !!}
</div>
<div class="mb-3">
    <label for="is_popular" class="form-label">{{ __('Is Popular?') }}</label>
    {!! Form::onOff('is_popular', $isPopular, ['class' => 'form-control']) !!}
</div>
