# Docker Setup for Coding Assignment

## Overview

This document provides instructions to set up and run the React Component Library developed as part of the coding assignment. This library includes various UI components and is Dockerized for easy setup and deployment.

### Prerequisites

- Docker installed on your machine.
- Node.js and npm installed on your machine.
- Storybook installed in your machine.

## Setup and Running the Application

### Cloning the Repository

1. Clone the repository to your local machine:

    ```bash
    git clone https://github.com/mjuyo/webd3012_coding_assignment_13.git
    ```

2. Navigate to the repository directory:
    
    ```bash
    cd webd3012_coding_assignment_13
    ```

3. Build the Docker image:

    ```bash
    docker build -t mjuyo:13.0 .
    ```

4. Run the Docker container with the specified name:

    ```bash
    docker run -p 8018:8018 -d --name juyo_marco_coding_assignment13 mjuyo:13.0
    ```

5. Open your browser and go to `http://localhost:8018`. 


## Continuous Integration and Deployment

This project uses GitHub Actions for Continuous Integration (CI) to automate the process of code quality checks, and testing. Our CI workflow includes the following steps:

- **Code Quality Checks**: Automatically runs ESLint and Prettier to ensure that all code changes meet our coding standards.
- **Automated Testing**: Runs all unit and integration tests using Jest to ensure that all features work as expected.

### Workflow Triggers

- The CI workflow is triggered on every push and pull request to the `main` branch.
- Contributors are encouraged to run ESLint, Prettier, and Jest tests locally before pushing their code. This can be done using the following commands:

```bash
npm run lint
npm run format
npm test
```

## Project Structure

- `Dockerfile`: Contains the instructions to build the Docker image.
- `package.json`: Lists the project dependencies.
- `src/App.js`: Main React component.
- `src/components`: Folder where the Storybook components are located.
- `README.md`: This file with setup instructions.

