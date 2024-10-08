#!/bin/bash

# Navigate to the solution directory
cd ./solution

# Clone the repositories
git clone https://github.com/Rithari/FootballDataPortal
git clone https://github.com/Rithari/FDP_Cluster
git clone https://github.com/Rithari/FDP_SpringBoot
git clone https://github.com/Rithari/FDP_Flask
git clone https://github.com/Rithari/FDP_JupyterNotebook


# Run docker-compose
docker-compose up --build -d
