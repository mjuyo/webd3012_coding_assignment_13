# Docker Setup for Coding Assignment

## Getting Started

This project is a React Component Library using Storybook.

### Prerequisites

- Docker installed on your machine.
- Node.js and npm installed on your machine.
- Storybook installed in your machine.

### Setup Instructions

1. Clone the repository to your local machine:

    ```bash
    git clone https://github.com/mjuyo/webd3012_coding_assignment_12.git
    ```

2. Navigate to the repository directory:
    
    ```bash
    cd webd3012_coding_assignment_12
    ```

3. Build the Docker image:

    ```bash
    docker build -t mjuyo:12.0 .
    ```

4. Run the Docker container with the specified name:

    ```bash
    docker run -p 8083:6006 -d --name juyo_marco_coding_assignment12 mjuyo:12.0
    ```

5. Open your browser and go to `http://localhost:8083`. You should see a webpage with Storybook and the components.


## Testing

1. To run tests, use:

    ```bash
    npm run test
    ```

## Project Structure

- `Dockerfile`: Contains the instructions to build the Docker image.
- `package.json`: Lists the project dependencies.
- `src/App.js`: Main React component.
- `src/components`: Folder where the Storybook components are located.
- `README.md`: This file with setup instructions.
# webd3012_coding_assignment_13
# webd3012_coding_assignment_13
# webd3012_coding_assignment_13
# webd3012_coding_assignment_13
