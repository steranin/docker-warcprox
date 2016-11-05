Alpine warcprox container
-------------------------

Usage

```shell
docker run -p 8000:8000 \
           -v /path/to/db:/db \
           -v /path/to/warcs:/warcs \
           -v /path/to/ca:/ca \
           steranin/warcprox -j /db/dedup.db \
                             --stats-db-file /db/stats.db \
                             -c /ca/ca.pem \
                             --certs-dir /ca
```

With Kafka support

```shell
docker run -p 8000:8000 \
           -v /path/to/db:/db \
           -v /path/to/warcs:/warcs \
           -v /path/to/ca:/ca \
           steranin/warcprox -j /db/dedup.db \
                             --stats-db-file /db/stats.db \
                             -c /ca/ca.pem \
                             --certs-dir /ca \
                             --kafka-broker-list  <kafka broker URLs> \
                             --kafka-capture-feed-topic <kafka topic>
```
