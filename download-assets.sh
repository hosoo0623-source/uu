#!/usr/bin/env bash
# Downloads the Figma assets referenced by index.html into ./assets
# NOTE: the Figma asset URLs are temporary (about 7 days from 2026-11-18).
set -euo pipefail
cd "$(dirname "$0")"
mkdir -p assets

B="https://www.figma.com/api/mcp/asset"
get() { echo "-> $2"; curl -fL -sS -o "assets/$2" "$B/$1"; }

# Raster images
get eb257415-fcad-4e25-9f6a-7ca63d157d2e.png hero.png
get 8ac32222-5f06-40f5-97da-25b445abe12b.png product-meadow.png
get e1ec7877-489e-4867-a177-04bd50e7b682.png product-jardinea.png
get bcc10ab4-7a5c-44cf-92a4-5ce53d8b91c9.png product-lavanda.png
get 8e878e4d-7020-4c30-8c23-0775ba4f524d.png product-neroli.png
get 99c4df4e-7229-4df7-852a-b583ce090833.png dream.png
get 61dfedc3-6ff4-4d9a-baf9-fc9b4ab37a44.png earth.png
get ee39b8a1-eb5f-486b-b9c5-1e8b67f87759.png avatar-samantha.png
get a9fda48d-4976-409a-bd28-d9243effbf3c.png avatar-natalie.png
get 62d812c5-d989-4120-97ec-9adc5029c3b4.png avatar-jessica.png

# SVGs
get a43502e9-e7e5-428f-ad44-da7c055314b9.svg featured-logos.svg
get 77ac76ac-8014-419e-8611-dc96deb02439.svg icon-flower.svg
get 22a38dc7-63ab-4008-951b-1d462dd24fe8.svg icon-sourcing.svg
get 536e9d94-6b54-4fb4-ac9d-637cb807570b.svg icon-clean.svg
get 89e8d119-d09c-47da-a989-7b986b6be072.svg icon-packaging.svg
get 8933c131-1dcd-4c6d-af2b-0afdd843c6eb.svg icon-cruelty-free.svg
get 323ef71b-5952-464d-8f48-364f650e7eb1.svg icon-star.svg
get a3c28457-eabb-42d5-b107-b0e7da6a149c.svg arrow-prev.svg
get 7d15fa26-c426-48fd-825a-88ea1bef82e7.svg arrow-next.svg
get 2d3a2705-3b65-4e28-8ac1-df43d4767956.svg icon-flower-footer.svg
get e87fb960-210e-4e5f-a4c5-b6e4cdcc75d5.svg vector.svg
get 29c5510a-1e36-4ca1-b66f-8f8e9fadffe5.svg footer-wordmark.svg
get 6bce9168-3ad2-4cbd-9d2b-2ece7975a90c.svg icon-shopping-bag.svg
get 5e7e3351-3832-4c7b-9bf8-c24fbbe87d67.svg nav-logo.svg
get d1c252b5-cd6c-41e2-b5a2-680cb4d858c0.svg icon-cancel.svg

echo "Done. Open index.html in a browser."
