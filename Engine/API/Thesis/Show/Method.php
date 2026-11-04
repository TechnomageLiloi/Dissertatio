<?php

namespace Liloi\Dissertatio\API\Thesis\Show;

use Liloi\Dissertatio\API\Method as SuperMethod;
use Liloi\Dissertatio\Domain\Thesis\Manager as ThesisManager;

class Method extends SuperMethod
{
    public function execute(): array
    {
        $entity = ThesisManager::getThesis();

        return [
            'render' => $this->render(__DIR__ . '/Template.tpl', [
                'entity' => $entity
            ])
        ];
    }
}