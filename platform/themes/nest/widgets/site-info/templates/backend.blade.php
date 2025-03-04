<div class="mb-3">
    <label>{{ trans('core/base::forms.name') }}</label>
    <input type="text" class="form-control" name="name" value="{{ $config['name'] }}">
</div>

<div class="mb-3">
    <label>{{ trans('core/base::forms.description') }}</label>
    <textarea class="form-control" rows="3" name="about">{{ $config['about'] }}</textarea>
</div>

<div class="mb-3">
    <label>{{ __('Address') }}</label>
    <input type="text" class="form-control" name="address" value="{{ $config['address'] }}">
</div>

<div class="mb-3">
    <label>{{ __('Phone') }}</label>
    <input type="text" class="form-control" name="phone" value="{{ $config['phone'] }}">
</div>

<div class="mb-3">
    <label>{{ __('Email') }}</label>
    <input type="email" class="form-control" name="email" value="{{ $config['email'] }}">
</div>

<div class="mb-3">
    <label>{{ __('Working hours') }}</label>
    <input type="text" class="form-control" name="working_hours" value="{{ $config['working_hours'] }}">
</div>
