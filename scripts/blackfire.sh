#!/bin/sh

# enable blackfire if needed
if [ "$BLACKFIRE_ENABLE" == "true" ]; then
    printf "extension=blackfire.so\nblackfire.agent_socket=tcp://${BLACKFIRE_AGENT_URL:-127.0.0.1}:${BLACKFIRE_AGENT_PORT:-8707}\nblackfire.log_level=${BLACKFIRE_LOG_LEVEL:-1}\nblackfire.log_file=${BLACKFIRE_LOG_FILE:-/dev/null}" > $PHP_INI_DIR/conf.d/blackfire.ini
fi

