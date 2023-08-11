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


## Git Branch Naming Convention
 `<type>/<name>/<short-description>`

- `<type>`: Represents the type of the branch (e.g., feature, bugfix, enhancement, hotfix).
- `<name>`: Name of the contributor
- `<short-description>`: A concise description of the task or purpose.

Example:
- `feature/mazhar/user-authentication`: Adding user authentication feature.

# Database Versioning

We utilize the Flyway community version to manage our database versioning.

## Migration Script Naming Convention

The naming convention for migration scripts is as follows:


Here's the breakdown of the parts: <br>

- `Prefix`: V for versioned (configurable)
- `Version`: Use dots or underscores to separate as many parts as necessary (not applicable for repeatable migrations)
- `Separator`: `__` (two underscores) (configurable)
- `Description`: Use underscores or spaces to separate words in the description
- `Suffix`: `.sql`

For example:

```sql
V1__create_user_table.sql
```
 ## Run Migration
`gradle flywayMigrate -i`

## Licence

