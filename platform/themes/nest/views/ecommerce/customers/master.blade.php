@php
    Theme::layout('full-width');
@endphp
<div class="page-content pt-50 pb-150 customer-page">
    <div class="container">
        <div class="row">
            <div class="col-md-3">
                <div class="dashboard-menu">
                    <ul class="nav flex-column">
                        @foreach (DashboardMenu::getAll('customer') as $item)
                            <li class="nav-item text-truncate" id="{{ $item['id'] }}">
                                <a
                                    class="nav-link
                                    @if ($item['active']) active @endif"
                                    href="{{ $item['url']  }}"
                                    aria-current="@if ($item['active']) true @else false @endif"
                                    title="{{ __($item['name']) }}"
                                >
                                    @if ($item['icon'])
                                        <x-core::icon :name="$item['icon']" />
                                    @endif
                                    {{ __($item['name']) }}
                                </a>
                            </li>
                        @endforeach
                    </ul>
                </div>
            </div>
            <div class="col-md-9">
                <div class="tab-content account dashboard-content pl-50">
                    <div class="tab-pane fade active show" id="dashboard" role="tabpanel" aria-labelledby="dashboard-tab">
                        <div class="card">
                            @yield('content')
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
