git fetch origin
git reset --hard origin/master

docker build -t igatemonitor:v1 .

docker run -it -p"24224:24224" -v "/home/pi/:/etc/" igatemonitor:v1
