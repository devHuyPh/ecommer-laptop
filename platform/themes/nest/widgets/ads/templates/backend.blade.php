@if (is_plugin_active('ads'))
    <div class="mb-3">
        <label for="widget-name">{{ __('Name') }}</label>
        <input type="text" id="widget-name" class="form-control" name="name" value="{{ $config['name'] }}">
    </div>
    <div class="mb-3">
        <label for="widget_menu">{{ __('Select ads') }}</label>
        {!! Form::customSelect('ads_key', AdsManager::getData()->pluck('name', 'key'), $config['ads_key']) !!}
    </div>
@endif
