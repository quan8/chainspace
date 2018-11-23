ps:
	ps aux | grep -v grep | grep chainspace | awk '{print $$2 " " $$11 " " $$12 " " $$13}'

check-port:
	lsof -i :$(port)

list-nodes:
	screen -list

build-jar:
	cd chainspacecore && mvn -Dversion=1.0-SNAPSHOT package assembly:single -DskipTests 

dist:
	./contrib/core-tools/build-node-dist.sh

start-nodes:
	./contrib/core-tools/easystart.mac.sh

start-nodes-debug:
	./contrib/core-tools/easystart.mac.debug.sh

tail-node:
	tail -f chainspacecore-0-0/screenlog.0

start-client-api:
	cd chainspacecore && ./runclientservice.sh

path=/
curl-client-api:
	curl -v -H "Accept: application/json" -H "Content-Type: application/json" http://localhost:5000/api/1.0$(path) && echo "\n\n"

kill-all:
	ps aux | grep -v grep | grep chainspace | awk '{print $$2}' | xargs kill




