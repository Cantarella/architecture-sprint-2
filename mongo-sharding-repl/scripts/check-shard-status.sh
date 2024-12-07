#!/bin/bash
docker compose exec -T shard-1 mongosh --port 27018 --quiet <<EOF
use somedb;
db.helloDoc.countDocuments();
EOF

docker compose exec -T shard-2 mongosh --port 27019 --quiet <<EOF
use somedb;
db.helloDoc.countDocuments();
EOF

docker compose exec -T mongos_router mongosh --port 27020 --quiet <<EOF
db.printShardingStatus();
EOF