<?php

namespace Database\Seeders;

use Botble\Base\Enums\BaseStatusEnum;
use Botble\Base\Supports\BaseSeeder;
use Botble\Ecommerce\Database\Seeders\Traits\HasProductSeeder;
use Illuminate\Support\Arr;
use Illuminate\Support\Facades\File;

class ProductSeeder extends BaseSeeder
{
    use HasProductSeeder;

    public function run(): void
    {
        $this->uploadFiles('products');

        $faker = $this->fake();

        $products = [
            [
                'name' => 'Seeds of Change Organic Quinoe',
                'is_featured' => true,
                'metadata' => [
                    'layout' => 'product-right-sidebar',
                ],
            ],
            [
                'name' => 'All Natural Italian-Style Chicken Meatballs',
                'is_featured' => true,
                'metadata' => [
                    'layout' => 'product-left-sidebar',
                ],
            ],
            [
                'name' => 'Angie’s Boomchickapop Sweet & Salty Kettle Corn',
                'is_featured' => true,
                'metadata' => [
                    'layout' => 'product-full-width',
                ],
            ],
            [
                'name' => 'Foster Farms Takeout Crispy Classic',
                'is_featured' => true,
            ],
            [
                'name' => 'Blue Diamond Almonds Lightly',
                'is_featured' => true,
            ],
            [
                'name' => 'Chobani Complete Vanilla Greek',
                'is_featured' => true,
            ],
            [
                'name' => 'Canada Dry Ginger Ale – 2 L Bottle',
                'is_featured' => true,
            ],
            [
                'name' => 'Encore Seafoods Stuffed Alaskan',
                'is_featured' => true,
            ],
            [
                'name' => 'Gorton’s Beer Battered Fish Fillets',
                'is_featured' => true,
            ],
            [
                'name' => 'Haagen-Dazs Caramel Cone Ice Cream',
                'is_featured' => true,
            ],
            [
                'name' => 'Nestle Original Coffee-Mate Coffee Creamer',
                'is_featured' => true,
            ],
            [
                'name' => 'Naturally Flavored Cinnamon Vanilla Light Roast Coffee',
                'is_featured' => true,
            ],
            [
                'name' => 'Pepperidge Farm Farmhouse Hearty White Bread',
                'is_featured' => true,
            ],
            [
                'name' => 'Organic Frozen Triple Berry Blend',
                'is_featured' => true,
            ],
            [
                'name' => 'Oroweat Country Buttermilk Bread',
                'is_featured' => true,
            ],
            [
                'name' => 'Foster Farms Takeout Crispy Classic Buffalo Wings',
                'is_featured' => true,
            ],
            [
                'name' => 'Angie’s Boomchickapop Sweet & Salty Kettle Corn',
                'is_featured' => true,
            ],
            [
                'name' => 'All Natural Italian-Style Chicken Meatballs',
                'is_featured' => true,
            ],
            [
                'name' => 'Simply Lemonade with Raspberry Juice',
                'is_featured' => true,
            ],
            [
                'name' => 'Perdue Simply Smart Organics Gluten Free',
                'is_featured' => true,
            ],
            [
                'name' => 'Chen Watermelon',
                'is_featured' => true,
            ],
            [
                'name' => 'Organic Cage-Free Grade A Large Brown Eggs',
                'is_featured' => true,
            ],
            [
                'name' => 'Colorful Banana',
                'is_featured' => true,
            ],
            [
                'name' => 'Signature Wood-Fired Mushroom and Caramelized',
                'is_featured' => true,
            ],
        ];

        foreach ($products as $key => &$item) {
            if (! isset($item['description'])) {
                $item['description'] = file_get_contents(__DIR__ . '/contents/product-description.html');
            }

            $item['content'] = file_get_contents(__DIR__ . '/contents/product-content.html');
            $item['status'] = BaseStatusEnum::PUBLISHED;
            $item['sku'] = 'HS-' . $faker->numberBetween(100, 200);
            $item['brand_id'] = $faker->numberBetween(1, 7);
            $item['views'] = $faker->numberBetween(1000, 200000);
            $item['quantity'] = $faker->numberBetween(10, 20);
            $item['length'] = $faker->numberBetween(10, 20);
            $item['wide'] = $faker->numberBetween(10, 20);
            $item['height'] = $faker->numberBetween(10, 20);
            $item['weight'] = $faker->numberBetween(500, 900);
            $item['with_storehouse_management'] = true;

            if ($key % 2 == 0) {
                Arr::set($item, 'metadata.is_popular', '1');
            }

            $images = [
                'products/' . ($key + 1) . '.jpg',
            ];

            for ($i = 1; $i <= 10; $i++) {
                if (File::exists(database_path('seeders/files/products/' . ($key + 1) . '-' . $i . '.jpg'))) {
                    $images[] = 'products/' . ($key + 1) . '-' . $i . '.jpg';
                }
            }

            $item['images'] = json_encode($images);
        }

        $this->createProducts($products);
    }
}
