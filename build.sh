if ! test -f assets/node; then
  mkdir -p tmp
  cd tmp
  if ! test -f node-v8.17.0-linux-x64/bin/node; then
    echo "-> downloading node v8.17"
    curl https://nodejs.org/dist/latest-v8.x/node-v8.17.0-linux-x64.tar.gz -O
    tar -xf node-v8.17.0-linux-x64.tar.gz node-v8.17.0-linux-x64/bin/node
  else
    echo "-> found node v8.17"
  fi
  cp node-v8.17.0-linux-x64/bin/node ../assets/node
  cd ..
fi

echo "-> building docker image"
docker build -t wechat-token .