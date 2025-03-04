@if ($keys->isNotEmpty())
    @php $shortcode = $shortcode ?? null; @endphp
    @if ($style == 'style-5')
        <section class="section-padding">
            <div class="container">
                <div class="row">
                    @foreach ($keys as $key)
                        <div class="col-lg-3 col-md-6">
                            {!! display_ad($key, '', $loop, $shortcode) !!}
                        </div>
                    @endforeach
                </div>
            </div>
        </section>
    @else
        <section class="banners pt-60">
            <div class="container">
                <div class="row justify-content-center">
                    @foreach ($keys as $key)
                        <div class="col-lg-4 col-md-6">
                            {!! display_ad($key, '', $loop, $shortcode) !!}
                        </div>
                    @endforeach
                </div>
            </div>
        </section>
    @endif
@endif
