# DevSecOps CI/CD Pipeline with Fortify and WebInspect

## Overview
This project demonstrates how to set up a DevSecOps pipeline integrating:
- **Fortify SCA** for Static Application Security Testing (SAST)
- **WebInspect** for Dynamic Application Security Testing (DAST)
- **Audit Workbench** for reviewing scan results
- **GitHub Actions** for CI/CD automation

The web app is a basic Node.js Express server.

## Project Goals
- Automate security scanning in CI/CD
- Learn how to integrate SAST and DAST tools
- Review and act on security findings using Audit Workbench

## Prerequisites
- Fortify SCA installed locally (for SAST)
- WebInspect installed on Windows (for DAST)
- GitHub account with Actions enabled
- Basic understanding of CI/CD and Git

## Running the App Locally
```bash
cd app
npm install
npm start
```
Visit: `http://localhost:3000`

## CI/CD Pipeline Flow
1. Code is pushed to `main` branch
2. GitHub Actions runs the pipeline:
    - Installs dependencies
    - Runs Fortify SCA scan
    - Archives results
    - Deploys to staging (simulated)
    - (Optionally) Triggers WebInspect scan manually or via API
    - Uploads DAST report

## Fortify SAST Scan (run_fortify.sh)
```bash
sourceanalyzer -b myproject -clean
sourceanalyzer -b myproject ./app/*.js
sourceanalyzer -b myproject -scan -f fortify_output/fortify.fpr
```

## WebInspect DAST Scan (run_webinspect.bat)
```bat
"C:\Program Files\HP\HP WebInspect\WebInspect.exe" /scan /url http://localhost:3000 /policy Default /report webinspect_output/report.xml
```

## Reviewing Reports
Open `fortify.fpr` in Audit Workbench for detailed analysis. Use `report.xml` for DAST insights.

## Contributors
- **AbhiramMangde** - DevOps Engineering
- **Siddhi Itkelwar** - Security Testing
