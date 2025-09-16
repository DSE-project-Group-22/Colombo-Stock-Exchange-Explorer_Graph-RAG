# Contributing Guide

## Branch Naming Convention

Use descriptive branch names with the following format:

- `feature/` - New features (e.g., `feature/add-portfolio-tracker`)
- `fix/` - Bug fixes (e.g., `fix/authentication-error`)
- `refactor/` - Code refactoring (e.g., `refactor/optimize-query-performance`)
- `docs/` - Documentation updates (e.g., `docs/update-api-endpoints`)
- `test/` - Test additions or fixes (e.g., `test/add-integration-tests`)

## Working on a Feature

1. **Create a new branch from main**
   ```bash
   git checkout main
   git pull origin main
   git checkout -b feature/your-feature-name
   ```

2. **Make your changes and commit**
   ```bash
   git add .
   git commit -m "Description of changes"
   ```

3. **Keep your branch up to date with main**
   ```bash
   git checkout main
   git pull origin main
   git checkout feature/your-feature-name
   git rebase main
   ```

4. **Push your branch**
   ```bash
   git push origin feature/your-feature-name
   ```
   If you've rebased, you may need to force push:
   ```bash
   git push origin feature/your-feature-name --force-with-lease
   ```

5. **Open a Pull Request**
   - Go to GitHub and create a PR from your branch to `main`
   - Provide a clear description of changes
   - Wait for review and address any feedback
   - Once approved, the PR will be merged to main