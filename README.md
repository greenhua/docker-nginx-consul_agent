tested on mac
consul server has been started manualy
 docker run -d  -e CONSUL_LOCAL_CONFIG='{ "datacenter":"dc1", "server":true,  "enable_debug":true, "addresses":{"http": "0.0.0.0"},}' -p 8300:8300 -p 8301:8301 -p 8302:8302 -p 8500:8500 consul agent -server -bootstrap-expect=1 dev-consul