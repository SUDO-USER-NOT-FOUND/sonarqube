# Docker Project: Deploying PHP, MySQL, and phpMyAdmin with Jenkins Automation

Welcome to the Docker Project for deploying a PHP application with MySQL database support and phpMyAdmin for database management using Jenkins automation.

![Project Logo](https://media.licdn.com/dms/image/C560BAQEqf7Ty65zbYQ/company-logo_200_200/0/1630642974979?e=2147483647&v=beta&t=zvaHR5YD_PdCR8jxm6YqXSitQUPLqTtrDRiyIYzzkN0)

## Project Structure

- **www**: Contains the PHP application files
    - `Dockerfile`: Dockerfile for building the customized PHP application with Apache server for installing extensions
    - `index.php`: Main PHP file for the application
    - (Other PHP files and assets for your application)
- **database**: Contains SQL files and execute script for MySQL setup
    - `example.sql`: Example SQL file (add your own SQL files here)
- `import.sh`: DEBIAN/UBUNTU Script to prepend CREATE and USE queries a database based on filename
- `import.ps1`: Windows Script for creating a database based on filename
- `docker-compose.yml`: Source code to automate the backup files

## Getting Started

### Prerequisites

1. **Docker:**
   - Ensure that Docker is installed on your machine. You can follow the official Docker documentation for installation instructions: [Get Docker](https://docs.docker.com/get-docker/).
   
2. **Jenkins:**
   - Ensure Jenkins is installed on your machine or accessible via a server. Follow the official Jenkins documentation for installation instructions: [Jenkins Documentation](https://www.jenkins.io/doc/).

### Running the Application

1. **Clone the Repository:**
    ```bash
    git clone https://github.com/Venkatakarthik0211/Docker_Project
    cd Docker_Project
    ```

2. **Build and Run the Docker Containers using Jenkins:**
    - Configure a Jenkins job to execute the necessary Docker commands or scripts.
    - Trigger the Jenkins job to build and run the Docker containers.

3. **Access the Services:**
   - PHP Application: [http://localhost:80](http://localhost:80)
   - phpMyAdmin: [http://localhost:8081](http://localhost:8081)
   - MySQL Database (accessible internally)

## Prerequisites

- Docker installed on your machine
- Jenkins configured and accessible

## Contributing

Pull requests are welcome! Contribute to make this Docker project even more awesome!

**Feel free to star ⭐ this repository if you find it helpful!**

Happy Dockerizing with Jenkins! 🐳
