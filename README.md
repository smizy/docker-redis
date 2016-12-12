# docker-redis
[![](https://images.microbadger.com/badges/image/smizy/redis.svg)](https://microbadger.com/images/smizy/redis "Get your own image badge on microbadger.com") 
[![](https://images.microbadger.com/badges/version/smizy/redis.svg)](https://microbadger.com/images/smizy/redis "Get your own version badge on microbadger.com")
[![CircleCI](https://circleci.com/gh/smizy/docker-redis.svg?style=svg&circle-token=0142f1f1188bf3bd4407cd860c1e8280f7315f60)](https://circleci.com/gh/smizy/docker-redis)
Redis docker image based on alpine

```
docker run --rm --sysctl net.core.somaxconn=1024 smizy/redis
```

<!---
echo never > /sys/kernel/mm/transparent_hugepage/enabled
-->
