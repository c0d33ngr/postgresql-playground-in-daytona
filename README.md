## **PostgresSQL Playground in Daytona**

### **Introduction**
This repository provides a Devcontainer configuration for setting up a ready-to-use PostgreSQL development environment workspace to use for learning or building database using Daytona. Workspace created with `daytona` allows you to define a reproducible development environment that can be easily shared and reused across different machines.

Daytona is a self-hosted and open source development environment manager platform that simpifies the development environment for software engineers, database administrators, etc.

### **Prerequisites**
To use this Devcontainer, you'll need:

- **An IDE:** Like Visual Studio Code (VS Code) or JetBrains. Ensure you have the latest version installed.
- **Daytona:** An amazing open source software development management platform. More info [here](https://www.daytona.io/)
- **Docker:** A container technology. Download link [here](https://docs.docker.com/get-started/get-docker/)

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
  - **`image`:** This uses a base Ubuntu image from Microsoft image repository.
  - **`features`:** This configuration adds PostgreSQL setup in the environment.

### **Customization**
You can customize the configuration to suit your specific needs. Refer to the official Devcontainers documentation for more details on available options: [here](https://containers.dev/implementors/json_reference/)

**Note:** If you encounter any problems or have questions, don't hesitate to open an issue.

### **Contribution**
You can make meaningful contributions to the repo as it's welcome. Feel free to open an issue or submit a PR for any changes, bug or features you think it's worth adding.
