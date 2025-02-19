#!/bin/bash

# Выход при ошибке
set -e

echo "Обновление protoc до версии 29.3..."

# Скачать protoc 29.3
wget -q --show-progress https://github.com/protocolbuffers/protobuf/releases/download/v29.3/protoc-29.3-linux-x86_64.zip

# Распаковать
unzip -q protoc-29.3-linux-x86_64.zip -d protoc-29.3

# Переместить файлы в нужные директории
sudo mv protoc-29.3/bin/protoc /usr/local/bin/
sudo mv protoc-29.3/include/* /usr/local/include/

# Обновить PATH
export PATH="/usr/local/bin:$PATH"
echo 'export PATH="/usr/local/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc

# Переименовать старый protoc (если есть)
if [ -f /usr/bin/protoc ]; then
    sudo mv /usr/bin/protoc /usr/bin/protoc_old
fi

# Проверить версию
protoc --version

echo "protoc успешно обновлён до версии 29.3!"
