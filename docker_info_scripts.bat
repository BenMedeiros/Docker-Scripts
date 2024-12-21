rem Misc scripts for Docker



docker container ls
rem start the mysql container
docker container start 1b7f4aed158f

rem stop the mysql container
docker container stop 1b7f4aed158f

rem monitor activity across all instances 
docker events

rem build container using dockerfile
docker build -t my-image -f ./dockerfiles/MyDockerfile .