## **PostgresSQL Playground in Daytona**

### **Introduction**
This repository provides a Devcontainer configuration for setting up a ready-to-use PostgreSQL development environment to use for learning or building database using Daytona. Devcontainers allow you to define a reproducible development environment that can be easily shared and reused across different machines.

Daytona is a self-hosted and open source development environment manager platform that simpifies the development environment for software engineers, database administrators, etc.

### **Prerequisites**
To use this Devcontainer, you'll need:

* **An IDE:** Like Visual Studio Code (VS Code) or JetBrains. Ensure you have the latest version installed.
* **Daytona:** An amazing open source software development management platform.

### **Getting Started**
1. **Clone the Repository:**
   ```bash
   git clone https://github.com/c0d33ngr/postgresql-playground-in-daytona.git
   ```
2. **Move into the cloned repository**
   ```bash
   cd postgresql-playground-in-daytona
   ```
3. **Run Daytona server**
   ```bash
   daytona server
   ```

### **Devcontainer Configuration**
The `devcontainer.json` file in this repository defines the specific environment configuration. It includes details such as:

* **Base image:** The Docker image used as the foundation of the container.
* **Extensions:** VS Code extensions that will be installed automatically.
* **PostCreateCommand:** Commands that will be executed after the container is created.
* **Features:** Additional features or settings that can be configured.

### **Customization**
You can customize the Devcontainer configuration to suit your specific needs. Refer to the official Devcontainers documentation for more details on available options: [here](https://containers.dev/implementors/json_reference/)

**Note:** If you encounter any issues or have questions, feel free to open an issue.

### **Contribution**
Feel free to open an issue or submit a PR for any changes, bug or features you worth adding.
