#!/bin/bash

# Выход при ошибке
set -e

echo "Установка Rust..."

# Установка Rust через rustup
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y

# Обновление окружения
source $HOME/.cargo/env

# Добавление Rust в PATH
echo 'export PATH="$HOME/.cargo/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc

# Обновление Rust
rustup update

# Проверка установки
rustc --version
cargo --version

echo "Rust успешно установлен и обновлён!"
