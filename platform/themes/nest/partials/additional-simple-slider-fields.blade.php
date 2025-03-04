<div class="mb-3">
    <label for="simple_slider_style" class="form-label">{{ __('Style') }}</label>
    {!! Form::customSelect('simple_slider_style', get_simple_slider_styles(), $style, ['class' => 'form-control', 'id' => 'simple_slider_style']) !!}
</div>
