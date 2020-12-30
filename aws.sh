#!/bin/bash
#
# Deploys to existing S3 buckets using AWS CLI

set -e

if [ "$2" = '--dryrun' ]; then
    DRYRUN="--dryrun"
fi

function s3_sync() {
    SYNC_DIR=$1
    SYNC_DOMAIN=$2
    pushd "${SYNC_DIR}" > /dev/null
    aws s3 sync . s3://"${SYNC_DOMAIN}" --exclude "private/*" --acl public-read ${DRYRUN}
    popd > /dev/null
}

if [ "$1" = "jeff" ]; then
    s3_sync "$1" "$1.rade.me"
elif [ "$1" = "payton" ]; then
    echo "Implement $1!"
elif [ "$1" = "tyler" ]; then
    echo "Implement $1!"
elif [ "$1" = "lisa" ]; then
    echo "Implement $1!"
elif [ "$1" = "devixgroup" ]; then
    s3_sync "$1.com" "$1.com"
elif [ "$1" = "rade" ]; then
    aws s3 sync . s3://"$1".me/ --exclude "*" --include "css/*" --include "js/*" --include "img/*" --include "index.html" --include "error.html" --acl public-read ${DRYRUN}
else
    echo "You did not provide a valid [sub]domain!"
    exit 1
fi

echo "Completed!"