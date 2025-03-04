<div class="mb-3">
    <label class="form-label">{{ __('Title') }}</label>
    <input type="text" name="title" value="{{ Arr::get($attributes, 'title') }}" class="form-control" placeholder="Title">
</div>

<div class="mb-3">
    <label class="form-label">{{ __('Number of products per row') }}</label>
    {!! Form::customSelect('per_row', array_combine([2, 3, 4, 5, 6], [2, 3, 4, 5, 6]), Arr::get($attributes, 'per_row', 4)) !!}
</div>

<div class="mb-3">
    <label class="form-label">{{ __('Total display products') }}</label>
    <input type="number" name="limit" value="{{ Arr::get($attributes, 'limit', 8) }}" class="form-control" placeholder="{{ __('Limit') }}">
</div>

{!! Shortcode::fields()->lazyLoading($attributes) !!}
