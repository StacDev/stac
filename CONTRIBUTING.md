# Contribution Guidelines

Thank you for your interest in contributing to **Stac**! We value your time and effort in helping us make Stac better for everyone. By contributing, you help create a framework that is more robust, feature-rich, and accessible for developers worldwide. This document outlines the process for contributing to Stac.

---

## Getting Started

### 1. **Understand Stac**
If you are new to Stac, we recommend you:
- Check out the [README](./README.md) for an overview of the framework.
- Explore the [documentation](https://docs.stac.dev/).
- Familiarize yourself with the codebase by browsing the repository.

### 2. **Code of Conduct**
All contributors are expected to adhere to our [Code of Conduct](./CODE_OF_CONDUCT.md). Please treat everyone with respect and kindness.

---

## Ways to Contribute

### 1. **Reporting Issues**
If you encounter a bug or have a feature request, you can:
- **Search existing issues** to avoid duplicates.
- Open a [new issue](https://github.com/StacDev/stac/issues) with a detailed description.

When reporting bugs, include:
- Steps to reproduce the issue.
- Expected and actual behavior.
- Relevant screenshots or code snippets, if applicable.

### 2. **Suggesting Enhancements**
Have ideas to improve Stac? Submit a feature request via the [issues page](https://github.com/StacDev/stac/issues). Be as descriptive as possible about the problem your suggestion solves.

### 3. **Contributing Code**

#### Step 1: Fork the Repository
- Click the **Fork** button on the repository to create your own copy.
- Clone your fork locally:
  ```bash
  git clone https://github.com/<your-username>/stac.git
  cd stac
  ```

#### Step 2: Create a Branch
- Create a feature or bugfix branch for your work:
  ```bash
  git checkout -b <branch-name>
  ```
  Use a descriptive name like `fix-auth-error` or `add-dark-mode`.

#### Step 3: Make Changes
- Follow the repository's coding standards and conventions.
- Ensure your code is well-documented and includes relevant comments.

#### Step 4: Test Your Changes
- Run the test suite to ensure your changes don’t break existing functionality:
  ```bash
  flutter test
  ```
- Write additional tests if required.

#### Step 5: Commit and Push
- Commit your changes:
  ```bash
  git commit -m "Brief description of changes"
  ```
- Push to your branch:
  ```bash
  git push origin <branch-name>
  ```

#### Step 6: Open a Pull Request
- Navigate to the original repository and click **New Pull Request**.
- Select your branch and provide a clear title and description for your pull request.

---

## Contribution Guidelines

### Code Style
- Use clean and readable code with appropriate comments.
- Follow the [Dart Style Guide](https://dart.dev/guides/language/effective-dart/style).
- Use meaningful variable, function, and class names.

### Commit Messages
- Write clear and descriptive commit messages.
- Use the following format for commit messages:
  ```
  <type>: <subject>

  <body>
  ```
  Example:
  ```
  fix: Resolve widget alignment issue

  Fixed alignment of the header widget on smaller devices.
  ```

---

## Reviewing Pull Requests
- Be respectful and constructive when reviewing other contributors' pull requests.
- Provide actionable feedback and suggest improvements where necessary.
- Maintain a positive and encouraging tone.

---

## Community Support

If you have questions or need guidance:
- Join our [community discussions](https://github.com/StacDev/stac/discussions).
- Reach out to us on our Slack/Discord channel (link provided in the repository).

---

## Thank You!

Your contributions help make Stac a better framework for developers worldwide. Thank you for being a part of the community!
