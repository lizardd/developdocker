# upstream test.com {
#          server 192.168.59.103:882;
#          keepalive 64;
#  }

# server {
#          listen 80;
#          server_name test.com;
#          access_log /workspace/logs/test.com/access.log;
#          error_log /workspace/logs/test.com/error.log;
#          location / {
#                  proxy_set_header   X-Real-IP            $remote_addr;
#                  proxy_set_header   X-Forwarded-For  $proxy_add_x_forwarded_for;
#                  proxy_set_header   Host                   $http_host;
#                  proxy_set_header   X-NginX-Proxy    true;
#                  proxy_set_header   Connection "";
#                  proxy_http_version 1.1;
#                  proxy_pass         http://test.com;
#          }
#  }



