#!/usr/bin/env bash

echo "php cs fixer"
symfony php vendor/bin/php-cs-fixer fix

echo "php phpunit"
symfony php vendor/bin/simple-phpunit install

echo "lint:yaml"
symfony console lint:yaml config

echo "lint:twig"
symfony console cache:clear --env=prod
symfony console lint:twig templates --env=prod

echo "lint:xliff"
symfony console lint:xliff translations

echo "lint:container"
symfony console lint:container --no-debug

echo "doctrine:schema:validate"
symfony console doctrine:schema:validate --skip-sync --no-interaction

echo "composer audit"
composer audit

echo "phpstan"
symfony php vendor/bin/phpstan analyze

echo "phpunit"
symfony php bin/phpunit
