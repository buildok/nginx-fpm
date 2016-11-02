#!/bin/bash

echo "FastCGI is running..."
exec php-fpm7.0 -F
# while true; do sleep 1; done

exit 0
