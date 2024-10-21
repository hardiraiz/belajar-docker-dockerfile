
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