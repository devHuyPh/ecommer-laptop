<?php

namespace Botble\Ecommerce\Http\Controllers;

use Botble\DataSynchronize\Exporter\Exporter;
use Botble\DataSynchronize\Http\Controllers\ExportController;
use Botble\Ecommerce\Exporters\OrderExporter;

class ExportOrderController extends ExportController
{
    protected function getExporter(): Exporter
    {
        return OrderExporter::make();
    }
}
