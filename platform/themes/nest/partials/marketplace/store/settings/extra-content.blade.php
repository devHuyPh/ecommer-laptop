@if ($storeSocialLinks = get_store_social_links())
    <div class="col-lg-12">
        <div class="row">
            @foreach ($storeSocialLinks as $key => $item)
                <div class="col-sm-6">
                    <div class="mb-3">
                        <label class="form-label" for="social_links_{{ $key }}">{{ $item['title'] }}</label>
                        <div class="input-group mb-3">
                            @if (Arr::get($item, 'domain'))
                                <span class="input-group-text px-2">{{ Arr::get($item, 'domain') }}</span>
                            @endif
                            {!! Form::text('social_links[' . $key . ']', Arr::get($model->getMetaData('social_links', true) ?: [], $key, ''), [
                                'class' => 'form-control',
                                'placeholder' => Arr::get($item, 'placeholder', '{username}'),
                                'id' => 'social_links_' . $key,
                            ]) !!}
                            <span class="input-group-text">
                            <img src="{{ Theme::asset()->url(Arr::get($item, 'logo')) }}" alt="{{ Arr::get($item, 'title') }}" />
                        </span>
                        </div>
                    </div>
                </div>
            @endforeach
        </div>
    </div>
@endif
