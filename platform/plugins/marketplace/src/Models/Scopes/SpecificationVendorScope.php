<?php

namespace Botble\Marketplace\Models\Scopes;

use Botble\Ecommerce\Models\Customer;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Scope;

class SpecificationVendorScope implements Scope
{
    public function apply(Builder $builder, Model $model): void
    {
        $builder
            ->where('author_type', Customer::class)
            ->where('author_id', auth('customer')->id());
    }
}
