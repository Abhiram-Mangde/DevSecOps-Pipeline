
# DevSecOps Pipeline with Fortify, Web Inspect, and Audit Workbench

## Project Overview

This project aims to integrate **DevSecOps** practices into the CI/CD pipeline by using tools like **Fortify**, **Web Inspect**, and **Audit Workbench**. These tools help identify vulnerabilities early in the software development lifecycle (SDLC) and ensure that the application is secure before it reaches production. This repository includes the necessary scripts, pipeline files, and configurations to automate these security checks as part of the CI/CD pipeline.

---

## Objective

The primary objective of this project is to create a fully automated pipeline that incorporates security scans at every stage, making the CI/CD process secure and efficient. The integration of **Fortify**, **Web Inspect**, and **Audit Workbench** into this pipeline ensures that vulnerabilities are identified and fixed early in the development process, ultimately leading to a more secure software product.

---

## Tech Stack Used

- **CI/CD**: GitHub Actions
- **Security Tools**:
  - **Fortify**: Static Application Security Testing (SAST) tool
  - **Web Inspect**: Dynamic Application Security Testing (DAST) tool
  - **Audit Workbench**: For managing security scans and reporting
- **Programming Language**: Node.js (JavaScript)
- **Version Control**: Git, GitHub

---

## DevSecOps Overview

**DevSecOps** is a philosophy and practice that integrates security into the software development lifecycle from the very beginning. It’s about **shifting security left** — bringing security practices earlier into the development process. The goal is to address potential vulnerabilities and risks as soon as they are identified, ensuring secure code before deployment. 

- **DevSecOps in CI/CD**: By integrating security testing into Continuous Integration/Continuous Deployment (CI/CD) pipelines, DevSecOps makes security part of the routine development and deployment process, automating security checks and allowing teams to fix vulnerabilities as soon as possible.
- **Benefits**: 
  - Early detection of vulnerabilities
  - Enhanced collaboration between development, security, and operations teams
  - Reduced cost of fixing vulnerabilities

---

## Fortify Overview

**Fortify** is a **Static Application Security Testing (SAST)** tool used to scan source code for vulnerabilities. It analyzes the application’s codebase for common coding errors, potential vulnerabilities, and security flaws.

- **Purpose**: To identify vulnerabilities at the **code level** before the application is executed.
- **How it Works**: It scans the application's source code and generates a detailed report with a list of vulnerabilities and potential risks.
- **Integration**: In this project, Fortify is integrated into the pipeline to automatically scan the code for vulnerabilities as part of the CI/CD process.

---

## Web Inspect Overview

**Web Inspect** is a **Dynamic Application Security Testing (DAST)** tool that performs real-time security analysis on running web applications.

- **Purpose**: It simulates an external attacker attempting to exploit the application by identifying vulnerabilities in the application runtime environment.
- **How it Works**: Web Inspect tests the live application, performing automated scans for common security vulnerabilities like SQL injection, Cross-Site Scripting (XSS), and other runtime vulnerabilities.
- **Integration**: In this project, Web Inspect is integrated into the pipeline to conduct real-time security tests during the deployment process.

---

## Audit Workbench Overview

**Audit Workbench** is a tool used to manage and report security vulnerabilities found by Fortify and Web Inspect.

- **Purpose**: To manage and analyze the results of security scans, making it easier to understand the severity of the vulnerabilities and track the progress of security remediation.
- **How it Works**: It consolidates reports from tools like Fortify and Web Inspect, providing detailed information on each vulnerability, its severity, and recommendations for fixing them.
- **Integration**: The integration with the CI/CD pipeline allows the audit results to be generated and reviewed automatically, providing actionable insights.

---

## Pipeline Overview

The **CI/CD pipeline** in this project is configured using **GitHub Actions**, a popular automation tool for continuous integration and delivery. The pipeline is designed to:

1. **Code Checkout**: The pipeline pulls the latest code from the repository.
2. **Build and Test**: It installs the required dependencies, runs unit tests, and builds the application.
3. **Security Scans**:
   - **Fortify**: Static code analysis to identify vulnerabilities in the codebase.
   - **Web Inspect**: Dynamic application security testing on the running application.
4. **Reporting**: The pipeline generates reports using Audit Workbench, which aggregates the results from Fortify and Web Inspect.
5. **Deployment**: If all security tests pass, the pipeline proceeds with deploying the application.

### Pipeline Configuration (YAML)

```yaml
name: DevSecOps CI/CD Pipeline

on:
  push:
    branches: [main]

jobs:
  build:
    runs-on: ubuntu-latest

    steps:
      - name: Checkout repo
        uses: actions/checkout@v2

      - name: Set up Node.js
        uses: actions/setup-node@v2
        with:
          node-version: '14'

      - name: Install dependencies
        run: npm install

      - name: Run tests
        run: npm test

      - name: Run Fortify scan
        run: |
          # Run Fortify static analysis here
          fortify_scan_command

      - name: Run Web Inspect scan
        run: |
          # Run Web Inspect dynamic analysis here
          web_inspect_scan_command

      - name: Generate Audit Workbench report
        run: |
          # Command to generate audit report
          audit_report_generation_command

      - name: Deploy to production
        run: |
          # Deployment steps here
          deploy_application_command
```

### Scripts Used in the Pipeline
- **Fortify Static Scan Script**: A script that integrates with Fortify to analyze your codebase for vulnerabilities.
- **Web Inspect Scan Script**: A script to interact with Web Inspect, scanning the application during runtime.
- **Audit Workbench Script**: A script that consolidates the results from Fortify and Web Inspect, generating an easy-to-read security report.

---

## How to Use the Pipeline

### Pre-requisites
1. You must have the **Fortify**, **Web Inspect**, and **Audit Workbench** tools installed and configured in your environment.
2. Set up necessary credentials and secrets in GitHub (e.g., Fortify API keys, Web Inspect credentials).
3. Make sure your application is deployable and that all necessary configuration files (like `package.json`) are present.

### Steps to Run the Pipeline
1. **Clone the repository**:
   ```bash
   git clone https://github.com/your-username/DevSecOps-Pipeline.git
   cd DevSecOps-Pipeline
   ```
2. **Set up GitHub secrets**:
   Go to your GitHub repository, and under **Settings > Secrets**, add your security tool credentials.
3. **Push the code**:
   Push the code to the `main` branch (or any other branch configured in the pipeline).

4. **Monitor Pipeline**:
   Once pushed, GitHub Actions will automatically start the pipeline. Monitor the process under **Actions** tab in your GitHub repository.

---

## Conclusion

This project integrates **DevSecOps** into the CI/CD pipeline by automating security checks using **Fortify**, **Web Inspect**, and **Audit Workbench**. By doing this, security is treated as an integral part of the development process, ensuring vulnerabilities are detected early, reducing the cost of fixing issues, and improving the overall security posture of the application.

---

## Future Enhancements

- **Advanced Security Testing**: Integrate more security testing tools such as Snyk or OWASP ZAP.
- **Reporting Dashboards**: Create detailed dashboards for security reports and track issues over time.
- **Automated Issue Remediation**: Implement automated fixes for common vulnerabilities.

---

## Contributors
Abhiram Mangde
Siddhi Itkelwar

