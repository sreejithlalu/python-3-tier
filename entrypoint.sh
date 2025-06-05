#!/bin/sh

echo "Waiting for PostgreSQL to be ready..."

# Wait until PostgreSQL is available
 while ! nc -z db 5432; do
   sleep 1
      done

 echo "PostgreSQL is up - starting application"

#   # Run the main container command
   exec "$@"

