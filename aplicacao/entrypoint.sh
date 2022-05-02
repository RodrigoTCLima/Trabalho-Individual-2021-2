#!/bin/bash
set -e

# Remove a potentially pre-existing server.pid for Rails.
rm -f /aplicacao/tmp/pids/server.pid
rails db:setup

exec "$@"