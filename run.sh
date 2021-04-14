if test -z "$(docker images | grep wechat-token)"; then
  echo "-> first run detected, preparing runtime"
  ./build.sh
  echo "-> runtime prepared"
  echo
fi

docker run --rm wechat-token