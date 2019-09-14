# Wordpress Development Enviroment in Docker

Follow the following steps to get a running clone of your wordpress blog in a local docker environment on MacOS

## Prerequisits
1. Docker is installed
2. GIT is installed
3. You have full backup of your wordpress blog including a database dump.

## Get it up and running
1. Clone this GIT repository to any directory on your Mac. To do so, run the following command:
 `git clone https://github.com/Cevi-Uster/`
2. Create the folders for the files and the database. Run the following commands to do so:
  `mkdir -p data/wp`
  `mkdir -p data/database`
3. Copy the files from the backup in to the folde `data/wp`
4. Copy the MySQL dump into `data/database` and rename it to database.sql
5. Make the file `replaceUrlInDatabase.sh` executable. To do so, run the following command:
  `chmod 755 replaceUrlInDatabase.sh`
6. Adjust the `replaceUrlInDatabase.sh` according to your needs and run it.
7. Start Docker with the following command: 
  `docker-compose -up`

## Test
Open your favorite browser and navigate to (http://127.0.0.1:8000). 

## Finish work
If everything works as expected, stop docker by pressing `Ctrl+C` in the shell and restart it by running the folling command:
`docker-compose up -d`to start Docker in detached mode.

## Known problems

### Wrong theme after restore
In my environment. Wordpress came up with the default theme instead of our own child-theme. I had to reset it by hand in the clone.
