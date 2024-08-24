## **PostgresSQL Playground in Daytona**

### **Introduction**
This repository provides a Devcontainer configuration for setting up a ready-to-use PostgreSQL development environment workspace to use for learning or building database using Daytona. Workspace created with `daytona` allows you to define a reproducible development environment that can be easily shared and reused across different machines.

Daytona is a self-hosted and open source development environment manager platform that simpifies the development environment for software engineers, database administrators, etc.

### **Prerequisites**
To use this Devcontainer, you'll need:

- **An IDE:** Like Visual Studio Code (VS Code) or JetBrains. Ensure you have the latest version installed.
- **Daytona:** An amazing open source software development management platform. More info [here]
- **Docker:** A container technology. Download link [here]

### **Getting Started**
1. **Paste the code below in your terminal to setup the workspace for PostgreSQL playground using `daytona`**
   ```bash
   daytona create https://github.com/c0d33ngr/postgresql-playground-in-daytona.git
   ```
2. **Paste the code below in your terminal to open the workspace in your preferred IDE you choose during `daytona` installation**
   ```bash
   daytona code postgresql-playground-in-daytona
   ```

### **Daytona Workspace Configuration**
The `devcontainer.json` file in this repository defines the specific environment configuration. It includes details such as:

  - **`name`:** Set the name of the development container environment to ``PostgreSQL Dev Container Playground``.
  - **`dockerComposeFile`:** Specifies the Docker Compose file (`docker-compose.yml`) that defines the services and their configurations.
  - **`workspaceFolder`:** Determine the location of the workspace folder within the container, using the base name of the local workspace folder.
  - **`service`:** Indicate that the development container will primarily interact with the ``postgres`` service defined in the Docker Compose file.
  - **`forwardPorts`:** Forwards the container's port ``5432`` to the host machine, allowing local access to the PostgreSQL database.
  - **`customizations`:** Defines additional customizations for the development environment:
      - **`vscode`:** Specifies customizations for Visual Studio Code:
          - **`extensions`:** Installs the ``streetsidesoftware.code-spell-checker`` extension to enable spell checking within the code editor.
  - **`postCreateCommand`:** Executes the specified command after the development container is created:
      - `psql -U ${POSTGRES_USER} -c 'SELECT 1;'`: Connects to the PostgreSQL database using the environment variable `POSTGRES_USER` and executes a simple query to verify the database connection.

### **Customization**
You can customize the configuration to suit your specific needs. Refer to the official Devcontainers documentation for more details on available options: [here](https://containers.dev/implementors/json_reference/)

**Note:** If you encounter any issues or have questions, feel free to open an issue.

### **Contribution**
Feel free to open an issue or submit a PR for any changes, bug or features you worth adding.
