@test "redis is the correct version" {
  run docker run smizy/redis:${TAG} redis-server --version
  echo "${output}" 

  [ $status -eq 0 ]
  x="${lines[1]}"
  [ "${x:0:20}" = "Redis server v=${VERSION}" ]
}