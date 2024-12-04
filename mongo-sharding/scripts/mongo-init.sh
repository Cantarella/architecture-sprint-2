#!/bin/bash
docker compose exec -T configSrv mongosh --port 27017 --quiet <<EOF
rs.initiate(
  {
    _id : "config_server",
       configsvr: true,
    members: [
      { _id : 0, host : "configSrv:27017" }
    ]
  }
);
EOF
docker compose exec -T shard-1 mongosh --port 27018 --quiet <<EOF
rs.initiate(
    {
      _id : "shard-1",
      members: [
        { _id : 0, host : "shard-1:27018" },
       // { _id : 1, host : "shard-2:27019" }
      ]
    }
);
EOF
docker compose exec -T shard-2 mongosh --port 27019 --quiet <<EOF
rs.initiate(
    {
      _id : "shard-2",
      members: [
       // { _id : 0, host : "shard-1:27018" },
        { _id : 1, host : "shard-2:27019" }
      ]
    }
  );
EOF