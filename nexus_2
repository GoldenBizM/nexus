#!/bin/bash

# Выход при ошибке
set -e

# Запросить prover ID
read -p "Введите ваш prover ID: " PROVER_ID

# Записать prover ID в файл
echo "$PROVER_ID" > ~/.nexus/prover-id

# Проверить запись
echo "Prover ID записан в ~/.nexus/prover-id"
cat ~/.nexus/prover-id

# Установка Nexus CLI
echo "Повторная установка Nexus CLI..."
curl https://cli.nexus.xyz/ | sh

echo "Готово!"
