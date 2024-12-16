#!/bin/bash
docker compose exec -T shard-1 mongosh --port 27018 --quiet <<EOF
  rs.add("repl-1:2018");
  rs.add("repl-2:2018");
EOF
docker compose exec -T shard-2 mongosh --port 27019 --quiet <<EOF
  rs.add("repl-1:2019");
  rs.add("repl-2:2019");
EOF