#!/bin/sh

exec run-parts --verbose --exit-on-error --regex='^[0-9]{2}.*\.chroot$' -- "$(dirname "$0")"
