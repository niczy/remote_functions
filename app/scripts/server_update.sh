#!/bin/bash

while true; do
  # Step 1: Run git pull
  git pull

  # Step 2: Run pnpm build
  pnpm build

  # Step 3: Run pnpm start in a separate process
  pnpm start &
  SERVER_PID=$!

  # Step 4: Wait 10 minutes
  sleep 600

  # Step 5: Kill the process from step #3
  kill $SERVER_PID
done
