# KUAA Backend API


## Prerequisites

- Spring boot: 3.1.2
- Java: JDK 17 or later
- Gradle: 8.2.* or later
- MySQL: 8.5 or later

## Install and Run the Project
If Docker is installed on your local machine, the MySQL container will automatically be installed and run with the required configurations.

If Docker is not installed, you will need to provide MySQL connection properties in the `application.properties` file.

## Project Structure
This is a Gradle multi-module project that follows a modular architecture to organize different components.


        ├── build.gradle             # root gradle file
        ├── settings.gradle          # Gradle settings file
        ├── src/
        │  ├── main/
        │  │  ├── java/
        │  │  ├── resources/         # project static file and external configuration
        │  ├── test/
        └── docker-compose.yaml      # project docker compose file
        └── README.md

## Project URL
`http://host:port/swagger-ui/index.html` <br>
example swagger link <br>
http://localhost:8080/swagger-ui/index.html


## Project Build and Run
`./gradlew build` build the project. <br>
`gradle bootRun`  run the project

## Licence

