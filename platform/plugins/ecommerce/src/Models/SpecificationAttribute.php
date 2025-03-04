<?php

namespace Botble\Ecommerce\Models;

use Botble\Base\Facades\AdminHelper;
use Botble\Base\Models\BaseModel;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;

class SpecificationAttribute extends BaseModel
{
    protected $table = 'ec_specification_attributes';

    protected $fillable = [
        'author_type',
        'author_id',
        'group_id',
        'name',
        'type',
        'options',
        'default_value',
    ];

    protected $casts = [
        'options' => 'array',
    ];

    protected static function booted(): void
    {
        if (AdminHelper::isInAdmin(true)) {
            static::addGlobalScope('admin', function ($query) {
                $query->whereNull('author_id');
            });
        }

        static::deleted(function (self $attribute) {
            $attribute->products()->detach();
        });
    }

    public function products(): BelongsToMany
    {
        return $this->belongsToMany(Product::class, 'ec_product_specification_attribute', 'attribute_id', 'product_id');
    }
}
