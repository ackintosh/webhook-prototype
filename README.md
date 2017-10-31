## Webhook Prototype

```
$ docker-compose up
```

#### Create a topic

```
$ docker-compose exec kafka kafka-topics --zookeeper localhost:2181 --create --replication-factor 1 --partitions 1 --topic events
```

#### Emit new event

```
$ echo "foo:bar" >> log/events.log
```
