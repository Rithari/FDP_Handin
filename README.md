# Project Setup Instructions

## Prerequisites

Before beginning the setup process, ensure the following prerequisites are met:

- Ports 80, 4000, 8080, and 3000 on your host machine must be free, as the Docker services expose these ports to the host to facilitate API testing via the [Postman Documentation](https://documenter.getpostman.com/view/7558469/2s9Yyti24E).
- PostgreSQL and MongoDB services should not be running on the host machine. If you are using macOS and have installed these services via Homebrew, you can disable them using the following commands:
  - `brew services stop postgresql`
  - `brew services stop mongodb-community`
 
- Up to 500 seconds of patience (or more based on connection speeds) if this is the first docker container you have built in a while, or ever. 

## Setup Steps

1. **Clone the Repository**
   - Clone this repository to your local machine. You can do this by running:
     ```
     git clone https://github.com/Rithari/FDP_Handin
     ```

2. **Navigate to the Repository**
   - Change directory to the cloned repository:
     ```
     cd FDP_Handin
     ```

3. **Set Script Permissions**
   - Give execution permission to `script.sh`:
     ```
     chmod +x script.sh
     ```

4. **Run the Setup Script**
   - Execute the script to set up the project:
     ```
     ./script.sh
     ```

5. **Wait for Docker Containers**
   - The script will pull and build the necessary Docker containers. Please wait for this process to complete.

6. **Access the Application**
   - Once the Docker containers are online, you can access the entry point at [http://localhost:80](http://localhost:80).
  

## ⚠️ Additional Notes

- **Git Permissions:** If you have the necessary permissions to clone this repository via your host machine's Command Line Interface (CLI) and git is properly configured, the script should work as expected. If you encounter issues, manually place the repositories into the `solution` folder and then run `docker-compose up --build -d` in that directory.

- **Docker Build Control:** If you prefer more control over the Docker building process, you can modify the script to not run the containers automatically. After modifying the script, you can manually execute `docker-compose up --build -d`.

- **Windows:** If you are running this project on Windows, use the `script.bat` instead.

- **Jupyter Notebook** The storytelling books are not containerized. Make sure the uncleaned CSV files are in the data directory, then run the notebooks to receive the cleaned data in the output.

---
