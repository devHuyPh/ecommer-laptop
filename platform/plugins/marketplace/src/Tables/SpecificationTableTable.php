<?php

namespace Botble\Marketplace\Tables;

use Botble\Ecommerce\Tables\SpecificationTableTable as BaseSpecificationTableTable;
use Botble\Marketplace\Tables\Traits\ForVendor;

class SpecificationTableTable extends BaseSpecificationTableTable
{
    use ForVendor;

    protected function getCreateRouteName(): string
    {
        return 'marketplace.vendor.specification-tables.create';
    }

    protected function getEditRouteName(): string
    {
        return 'marketplace.vendor.specification-tables.edit';
    }

    protected function getDeleteRouteName(): string
    {
        return 'marketplace.vendor.specification-tables.destroy';
    }
}
