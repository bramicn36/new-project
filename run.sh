#!/usr/bin/env bash
set -e

cd "$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

if [ ! -d "venv" ]; then
  echo "נוצרה סביבה וירטואלית"
  python3 -m venv venv
fi

echo "הספריות מותקנות"
./venv/bin/pip install -q -r requirments.txt

echo "השרת עולה בכתובת המקומית - http://localhost:8000 תמיד יהיה אפשר לעצור באמצעות control + c"


