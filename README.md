# docker-redis
[![](https://images.microbadger.com/badges/image/smizy/redis.svg)](https://microbadger.com/images/smizy/redis "Get your own image badge on microbadger.com") 
[![](https://images.microbadger.com/badges/version/smizy/redis.svg)](https://microbadger.com/images/smizy/redis "Get your own version badge on microbadger.com")
[![CircleCI](https://circleci.com/gh/smizy/docker-redis.svg?style=svg&circle-token=77f75d5a24abf30df04419907d1bb6a82d8dce9a)](https://circleci.com/gh/smizy/docker-redis)

Redis docker image based on alpine

```
docker run --rm --sysctl net.core.somaxconn=1024 smizy/redis
```

<!---
echo never > /sys/kernel/mm/transparent_hugepage/enabled
-->
