#!/bin/bash
set -e

# Remove a potentially pre-existing server.pid for Rails.

rails db:create
rails db:migrate
rails db:seed
rails server -b 0.0.0.0

exec "$@"