if [ -z "$1" ]; then
    echo "Usage: $0 <version>"
    exit 1
fi

docker build -t gradientcontainer:$1 pt211-tf215-cudatk120-py311/
docker image tag gradientcontainer:$1 fleclerc2/gradientcontainer:$1
docker image tag gradientcontainer:$1 fleclerc2/gradientcontainer:latest
docker image push fleclerc2/gradientcontainer:$1
docker image push fleclerc2/gradientcontainer:latest
