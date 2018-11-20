#!/bin/bash

set -e

export MVK_TMPLT_PATH="${PROJECT_DIR}/templates/framework/${MVK_OS}"
export MVK_BUILT_FRWK_PATH="${BUILT_PRODUCTS_DIR}/${PRODUCT_NAME}.framework"
export MVK_BUILT_FRWK_CONTENT_PATH="${MVK_BUILT_FRWK_PATH}${MVK_FRWK_SUBPATH}"

rm -rf "${MVK_BUILT_FRWK_PATH}"
cp -a  "${MVK_TMPLT_PATH}/${PRODUCT_NAME}.framework" "${BUILT_PRODUCTS_DIR}"
cp -a  "${BUILT_PRODUCTS_DIR}/lib${PRODUCT_NAME}.a" "${MVK_BUILT_FRWK_CONTENT_PATH}/${PRODUCT_NAME}"
cp -a "${PROJECT_DIR}/include/${PRODUCT_NAME}/" "${MVK_BUILT_FRWK_CONTENT_PATH}/Headers"
rm -f "${MVK_BUILT_FRWK_CONTENT_PATH}/Headers/README"	#Remove git empty directory placeholder file
