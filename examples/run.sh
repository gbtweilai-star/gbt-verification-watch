#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
PYTHONPATH=src python -m gbt_verification_watch info
PYTHONPATH=src python -m gbt_verification_watch check --payload '{}'
PYTHONPATH=src python -m gbt_verification_watch run   --payload '{}'
