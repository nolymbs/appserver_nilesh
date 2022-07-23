Steps followed

1. docker run -d --name fosfor fosfordevops/csvgenerator:latest
2. docker ps
3. docker ps -a
4. docker logs fosfor (error while reading the file "/csvserver/inputdata": open /csvserver/inputdata: no such file or directory)
5. vim gencsv.sh
6. chmod +x gencsv.sh
7. chmod 644 gencsv.sh
8. ./gencsv.sh
9. docker run -d -v /root/solution/inputdata:/csvserver/inputdata --name fosfor1 fosfordevops/csvgenerator:latest
10. docker exec -it fosfor1 bash
    ss -tan
    OR 
    docker exec fosfor1 ss -tan
11. docker stop fosfor1
12. docker rm $(docker ps -aq)
13. docker run -d -v /root/solution/inputdata:inputdata -e CSVSERVER_BORDER='Orange' -p 9393:9300/tcp --name fosfor fosfordevops/csvgenerator:latest

