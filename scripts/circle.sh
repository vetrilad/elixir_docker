#!/bin/bash
set -e

# Get dependencies
mix local.rebar --force
mix local.hex --force
yes | mix deps.get
mix test

# Exit successfully
exit 0