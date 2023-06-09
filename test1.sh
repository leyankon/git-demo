#!/bin/bash
if [ $# -lt 1 ]; then
        filename="Dockerfile"
else
        filename=$1
fi
 
cat>$filename<<EOF
FROM alpine
CMD ["echo", "Hello World!"]
EOF

docker build -t myhello .