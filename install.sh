#!/usr/bin/env bash
#
# Установка netswitch без Homebrew.
#   curl -fsSL https://raw.githubusercontent.com/ВАШ_GITHUB/netswitch/main/install.sh | bash
#
# Переменные окружения:
#   PREFIX  — каталог установки (по умолчанию /usr/local/bin)
#   REPO    — источник (по умолчанию ВАШ_GITHUB/netswitch)

set -euo pipefail

PREFIX="${PREFIX:-/usr/local/bin}"
REPO="${REPO:-ВАШ_GITHUB/netswitch}"
URL="https://raw.githubusercontent.com/${REPO}/main/netswitch"
TMP="$(mktemp)"

echo "Загрузка netswitch из ${REPO}…"
curl -fsSL "$URL" -o "$TMP"
chmod +x "$TMP"

echo "Установка в ${PREFIX}/netswitch (может потребоваться пароль)…"
if [[ -w "$PREFIX" ]]; then
  mv "$TMP" "$PREFIX/netswitch"
else
  sudo mv "$TMP" "$PREFIX/netswitch"
fi

echo "✓ Готово. Запусти для настройки:"
echo "    netswitch init"
