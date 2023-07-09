# Project Name

Hello World Application with MySQL Database

## Description

This project consists of a simple Flask application that connects to a MySQL database and displays "Hello, World!" when accessed. The project utilizes Docker for containerization and Kubernetes for deployment.

## Prerequisites

- Docker installed
- Kubernetes cluster set up
- MySQL database configured (if running locally)

## Installation

1. Clone the repository:

```
git clone https://github.com/your/repository.git
```

2. Build the Docker image:

```
docker build -t hello-world-app .
```

3. Run the MySQL database:

```
kubectl apply -f database.yaml
```

4. Deploy the Hello World application:

```
kubectl apply -f hello-world.yaml
```

## Usage

Access the application by using the NodePort of the `hello-world-service` or by accessing the service's external IP address, depending on your Kubernetes setup.

The application will display "Hello, World!" when accessed through the provided URL.

## Configuration

The application and the MySQL database can be configured using environment variables. The configuration is set through the Kubernetes deployment files.

To modify the database configuration, edit the `database.yaml` file and adjust the values for `MYSQL_ROOT_PASSWORD`, `MYSQL_DATABASE`, `MYSQL_USER`, and `MYSQL_PASSWORD`.

To modify the application configuration, edit the `hello-world.yaml` file and adjust the values for `DB_HOST`, `DB_USER`, `DB_PASSWORD`, and `DB_DATABASE`.

## Files

1. `Dockerfile`: Defines the Docker image for the application.
2. `app.py`: Contains the Flask application code that connects to the MySQL database.
3. `requirements.txt`: Specifies the Python dependencies required by the application.
4. `database.yaml`: Defines the Kubernetes deployment and service for the MySQL database.
5. `hello-world.yaml`: Defines the Kubernetes deployment and service for the Hello World application.

## License

This project is licensed under the [MIT License](LICENSE).
