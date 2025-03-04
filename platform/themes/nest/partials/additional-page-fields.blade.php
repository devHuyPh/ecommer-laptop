<div class="mb-3">
    <label for="header_style" class="form-label">{{ __('Header style') }}</label>
    {!! Form::customSelect('header_style', get_layout_header_styles(), $headerStyle, ['class' => 'form-control', 'id' => 'header_style']) !!}
</div>
