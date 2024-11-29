# Node.js Frontend and Backend Build

This GitHub Action simplifies the process of installing Node.js dependencies, building a frontend project, and running tests for both the frontend and backend. It encapsulates all necessary steps into a reusable action, saving you time and effort in setting up your CI/CD pipeline.

## Features

- Installs Node.js dependencies for both frontend and backend projects.
- Builds the frontend project.
- Runs tests for both the frontend and backend.
- Fully configurable to work with custom project directory structures.

---

## Inputs

| Name                  | Description                                    | Required | Default         |
|-----------------------|------------------------------------------------|----------|-----------------|
| `frontend_directory`  | The directory of the frontend project.         | Yes      | `./frontend`    |
| `backend_directory`   | The directory of the backend project.          | Yes      | `./backend`     |

---

## Example Usage

Here’s an example of how to use this action in your workflow:

```yaml
name: CI Pipeline

on:
  push:
    branches:
      - main

jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - name: Checkout code
        uses: actions/checkout@v3

      - name: Run Node.js frontend and backend build
        uses: melvinsamuel070/nodejs-frontend-backend-build@v1
        with:
          frontend_directory: './frontend'
          backend_directory: './backend'
```

---

## How It Works

1. **Inputs**: Specify the directories for your frontend and backend projects.
2. **Script Execution**: The action runs the `npm.sh` script, which performs the following tasks:
   - Updates the system and installs required dependencies (`Node.js`, `npm`, etc.).
   - Installs Node.js dependencies for both frontend and backend projects.
   - Builds the frontend project.
   - Runs tests for both projects.

---

## Requirements

- Your project must have `package.json` files in both the frontend and backend directories.
- Ensure that your test scripts are defined in the `package.json` files for both projects.

---

## Developing Locally

If you want to modify or test this action locally:

1. Clone the repository:
   ```bash
   git clone https://github.com/melvinsamuel070/npm-action.git 
   ```
2. Make `npm.sh` executable:
   ```bash
   chmod +x npm.sh
   ```
3. Test the script locally by running:
   ```bash
   ./npm.sh ./frontend ./backend
   ```

---

## Publishing the Action

To publish the action:

1. Update the version in your `action.yml` file.
2. Create a new tag and push it:
   ```bash
   git tag -a v1.0.0 -m "Initial release"
   git push origin v1.0.0
   ```

---

## Author

**Melvin Samuel**  
GitHub: [melvinsamuel070](https://github.com/melvinsamuel070)  
Email: [melvinsamuel070@gmail.com](mailto:melvinsamuel070@gmail.com)

---

## License

This project is licensed under the [MIT License](LICENSE).