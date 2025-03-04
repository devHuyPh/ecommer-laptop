<?php

namespace Botble\Marketplace\Tables;

use Botble\Ecommerce\Tables\SpecificationAttributeTable as BaseSpecificationAttributeTableTable;
use Botble\Marketplace\Tables\Traits\ForVendor;

class SpecificationAttributeTable extends BaseSpecificationAttributeTableTable
{
    use ForVendor;

    protected function getCreateRouteName(): string
    {
        return 'marketplace.vendor.specification-attributes.create';
    }

    protected function getEditRouteName(): string
    {
        return 'marketplace.vendor.specification-attributes.edit';
    }

    protected function getDeleteRouteName(): string
    {
        return 'marketplace.vendor.specification-attributes.destroy';
    }
}
