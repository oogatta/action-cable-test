# Action Cable Sample

## 1. Start Redis

### Example

```bash
$ brew services start redis
or
$ redis-server /usr/local/etc/redis.conf
```

## 2. Start Standalone Action Cable Server

### Example

```bash
bundle exec puma -p 28080 cable/config.ru
```

## 3. Start Rails Server

