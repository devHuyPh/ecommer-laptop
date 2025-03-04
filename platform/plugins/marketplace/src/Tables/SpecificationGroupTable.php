<?php

namespace Botble\Marketplace\Tables;

use Botble\Ecommerce\Tables\SpecificationGroupTable as BaseSpecificationGroupTable;
use Botble\Marketplace\Tables\Traits\ForVendor;

class SpecificationGroupTable extends BaseSpecificationGroupTable
{
    use ForVendor;

    protected function getCreateRouteName(): string
    {
        return 'marketplace.vendor.specification-groups.create';
    }

    protected function getEditRouteName(): string
    {
        return 'marketplace.vendor.specification-groups.edit';
    }

    protected function getDeleteRouteName(): string
    {
        return 'marketplace.vendor.specification-groups.destroy';
    }
}
