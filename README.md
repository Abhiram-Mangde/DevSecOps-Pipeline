# DevSecOps CI/CD Pipeline Example

This is a simple Node.js application demonstrating a production-level DevSecOps CI/CD setup using GitHub Actions.

## Features

- CI/CD pipeline using GitHub Actions
- Simulated SAST scan using Fortify
- Simulated DAST scan using WebInspect
- Upload of scan artifacts
- Secrets management using GitHub secrets
- Conditional logic for production-like workflows

## Project Structure

```
devsecops-pipeline/
├── app/
│   ├── app.js
│   └── package.json
├── .github/
│   └── workflows/
│       └── ci-cd.yml
└── README.md
```

## GitHub Setup Instructions

1. **Push this project to GitHub**

```bash
git init
git remote add origin https://github.com/YOUR_USERNAME/YOUR_REPO_NAME.git
git add .
git commit -m "Initial commit with DevSecOps pipeline"
git push -u origin main
```

2. **Add GitHub Secrets**

Go to `Settings > Secrets and variables > Actions` and add the following:
- `FORTIFY_TOKEN`: Your Fortify access token
- `FORTIFY_URL`: Your Fortify server URL

3. **Review the Workflow**

Check `.github/workflows/ci-cd.yml` to understand each step.

4. **Trigger the Workflow**

Push a change to `main` branch or create a PR to trigger the workflow.

## Note

This example includes simulated scan steps. Replace with real Fortify and WebInspect commands if needed.
