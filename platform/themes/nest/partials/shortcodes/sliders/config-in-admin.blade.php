<div class="mb-3">
    <label class="form-label">{{ __('Cover image') }}</label>
    {!! Form::mediaImage('cover_image', Arr::get($attributes, 'cover_image')) !!}
</div>
