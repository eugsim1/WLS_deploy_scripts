docker container rm test_sshd -f
docker image prune -f
docker image rmi 12213-domain-home-in-image-wdt -f
./build-archive.sh

ssh-keygen -t rsa -f keys/wls_rsa -q -P ""
cp -R keys /home/oracle/.ssh/.
chmod go-rwx /home/oracle/.ssh


##       --no-cache=true \
docker build \
      --build-arg CUSTOM_ADMIN_PORT=7001 \
      --build-arg CUSTOM_MANAGED_SERVER_PORT=8001 \
      --build-arg WDT_MODEL=simple-topology.yaml \
      --build-arg WDT_ARCHIVE=archive.zip \
      --build-arg WDT_VARIABLE=properties/docker-build/domain.properties \
      --force-rm=true \
      -t 12213-domain-home-in-image-wdt .
