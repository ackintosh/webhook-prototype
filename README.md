## Webhook Prototype

#### Setup

```
$ docker-compose run --rm consumer bundle install
```

#### Run

```
$ docker-compose up
```

#### Create a topic

```
$ docker-compose exec kafka kafka-topics --zookeeper localhost:2181 --create --replication-factor 1 --partitions 1 --topic events
```

#### Emit new event

```
$ echo "{"foo":"bar"}" >> log/events.log
```

#### Open Web UI

We can check the records via Web UI included in [Landoop/fast-data-dev](https://github.com/Landoop/fast-data-dev).

http://localhost:3030/
