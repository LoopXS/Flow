branch=main
git clone -b $branch https://github.com/LoopXS/bot /root/LoopXS
cp megatron/.env /root/LoopXS/.env
cd /root/LoopXS
docker build . --rm --force-rm --compress --pull --file Dockerfile -t megatron
docker run --privileged --env-file .env --rm -i megatron
