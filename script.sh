
# FROM Instruction
docker build -t hardi/from from

docker image ls

# RUN Instruction
docker build -t hardi/run run

docker build -t hardi/run run --progress=plain --no-cache

# CMD Instruction
docker build -t hardi/cmd command

docker image inspect hardi/cmd

docker container create --name command hardi/cmd

docker container start command

docker container ls -a | grep command

docker container logs command

# LABEL Instruction
docker build -t hardi/label label

docker image inspect hardi/

# ADD Instruction
docker build -t hardi/add add

docker container create --name add hardi/add

docker container start add

docker container logs add

# COPY Instruction
docker build -t hardi/copy copy

docker container create --name copy hardi/copy

docker container start copy

docker container logs copy

# .dockerignore
docker build -t hardi/ignore ignore

docker container create --name ignore hardi/ignore

docker container start ignore

docker container logs ignore

# EXPOSE Instruction
docker build -t hardi/expose expose

docker container create --name expose -p 8080:8080 hardi/expose

docker container start expose

curl localhost:8080

# ENV Instruction
docker build -t hardi/env env

docker image inspect hardi/env

docker container create --name env --env APP_PORT=9090 -p 9090:9090 hardi/env # mengubah port ketika membuat container

docker container start env

docker container logs env

# VOLUME Instruction
docker build -t hardi/volume volume

docker image inspect hardi/volume

docker container create --name volume -p 8080:8080 hardi/volume

docker container start volume

docker container logs volume # buka localhost dan tambahkan path url secara bebas

docker container inspect volume # pada Mounts anda akan melihat id volume

# WORKDIR Instruction
docker build -t hardi/workdir workdir

docker container create --name workdir -p 8080:8080 hardi/workdir

docker container start workdir

docker container exec -i -t workdir /bin/sh

pwd