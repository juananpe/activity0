#!/usr/bin/env bash
set -euo pipefail

# Detect OS / CPU architecture and pass a matching javafx.platform classifier to Maven when possible
arch=$(uname -m || true)
os=$(uname -s || true)
javafx_platform=""

case "$os" in
  Darwin)
    if [[ "$arch" == "arm64" ]]; then
      javafx_platform=mac-aarch64
    else
      javafx_platform=mac
    fi
    ;;
  Linux)
    if [[ "$arch" == "aarch64" ]]; then
      javafx_platform=linux-aarch64
    else
      javafx_platform=linux
    fi
    ;;
  MINGW*|CYGWIN*|MSYS*)
    javafx_platform=win
    ;;
  *)
    javafx_platform=""
    ;;
esac

if [[ -n "$javafx_platform" ]]; then
  echo "Launching with javafx.platform=$javafx_platform"
  mvn -q -Djavafx.platform="$javafx_platform" javafx:run
else
  echo "Launching (platform detection unavailable)"
  mvn -q javafx:run
fi
