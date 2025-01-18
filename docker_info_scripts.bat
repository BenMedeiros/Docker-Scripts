rem Misc scripts for Docker

rem List all running containers
docker container ls

rem List all running containers with detailed format
docker container ls --format "table {{.ID}}\t{{.Names}}\t{{.Image}}\t{{.Command}}\t{{.CreatedAt}}\t{{.RunningFor}}\t{{.Ports}}\t{{.Status}}\t{{.Size}}"

rem Execute a command inside a running MySQL container
docker exec -it 2d2fdf809d2a mysql -u my-user-102 -p

REM Note: The \G command in SQL is used to display the result of a query in a vertical format, which can be easier to read for wide tables.
rem Select all from table_name (example SQL command, not for Docker)
SELECT * FROM table_name\G

rem Start the MySQL container
docker container start 1b7f4aed158f

rem Stop the MySQL container
docker container stop 1b7f4aed158f

rem Run a new MySQL container with specific environment variables and port mapping
docker run -d --name 2d2fdf809d2a -e MYSQL_ROOT_PASSWORD=root-password-2 -p 3306:3306 mysql

rem Inspect the IP address of a running container
docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' 1b7f4aed158f

rem Monitor activity across all instances
docker events

rem Build container using Dockerfile
docker build -t my-image -f ./dockerfiles/MyDockerfile .