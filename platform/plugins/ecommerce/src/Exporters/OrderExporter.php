<?php

namespace Botble\Ecommerce\Exporters;

use Botble\DataSynchronize\Exporter\ExportColumn;
use Botble\DataSynchronize\Exporter\ExportCounter;
use Botble\DataSynchronize\Exporter\Exporter;
use Botble\Ecommerce\Models\Order;
use Botble\Ecommerce\Models\OrderProduct;
use Illuminate\Support\Collection;

class OrderExporter extends Exporter
{
    public function getLabel(): string
    {
        return trans('plugins/ecommerce::order.menu');
    }

    public function columns(): array
    {
        return [
            ExportColumn::make('id')->label('ID'),
            ExportColumn::make('created_at')->label('Order Date'),
            ExportColumn::make('status'),
            ExportColumn::make('customer_name'),
            ExportColumn::make('customer_email'),
            ExportColumn::make('customer_phone'),
            ExportColumn::make('amount'),
            ExportColumn::make('discount_amount'),
            ExportColumn::make('tax_amount'),
            ExportColumn::make('shipping_amount')->label('Shipping Fee'),
            ExportColumn::make('sub_total'),
            ExportColumn::make('shipping_address_full_address')->label('Shipping Address'),
            ExportColumn::make('billing_address_full_address')->label('Billing Address'),
            ExportColumn::make('payment_payment_channel'),
            ExportColumn::make('payment_status'),
            ExportColumn::make('payment_amount'),
            ExportColumn::make('payment_created_at')->label('Payment Date'),
            ExportColumn::make('shipping_method_name')->label('Shipping Method'),
            ExportColumn::make('shipment_status')->label('Shipping Status'),
            ExportColumn::make('shipment_date_shipped')->label('Shipping Date'),
            ExportColumn::make('shipment_tracking_id')->label('Tracking ID'),
            ExportColumn::make('shipment_shipping_company_name')->label('Shipping Company'),
            ExportColumn::make('products'),
        ];
    }

    public function counters(): array
    {
        return [
            ExportCounter::make()
                ->label(trans('plugins/ecommerce::order.export.total_orders'))
                ->value(Order::query()->count()),
        ];
    }

    public function hasDataToExport(): bool
    {
        return Order::query()->exists();
    }

    public function collection(): Collection
    {
        return Order::query()
            ->with([
                'shippingAddress',
                'billingAddress',
                'payment',
                'user',
                'products',
                'shipment',
            ])
            ->get();
    }

    /**
     * @param Order $row
     */
    public function map($row): array
    {
        $products = $row
            ->products
            ->map(fn (OrderProduct $product) => $product->product_name . (! empty($product->options['sku']) ? ' (' . $product->options['sku'] . ')' : null) . ' x ' . $product->qty)
            ->implode(', ');

        return [
            'id' => $row->getKey(),
            'created_at' => $row->created_at,
            'status' => $row->status,
            'customer_name' => $row->shippingAddress->name ?: $row->user->name,
            'customer_email' => $row->shippingAddress->email ?: $row->user->email,
            'customer_phone' => $row->shippingAddress->phone ?: $row->user->phone,
            'amount' => $row->amount,
            'discount_amount' => $row->discount_amount,
            'tax_amount' => $row->tax_amount,
            'shipping_amount' => $row->shipping_amount,
            'sub_total' => $row->sub_total,
            'shipping_address_full_address' => $row->shippingAddress->full_address ?: '-',
            'billing_address_full_address' => $row->billingAddress->full_address ?: '-',
            'payment_payment_channel' => $row->payment->payment_channel,
            'payment_status' => $row->payment->status,
            'payment_amount' => $row->payment->amount,
            'payment_created_at' => $row->payment->created_at,
            'shipping_method_name' => $row->shipping_method_name,
            'shipment_status' => $row->shipment->status,
            'shipment_date_shipped' => $row->shipment->date_shipped,
            'shipment_tracking_id' => $row->shipment->tracking_id,
            'shipment_shipping_company_name' => $row->shipment->shipping_company_name,
            'products' => $products,
        ];
    }
}
