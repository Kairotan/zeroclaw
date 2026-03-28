# CLAUDE.md — ZeroClaw (Claude Code)

> **Shared instructions live in [`AGENTS.md`](./AGENTS.md).**
> This file contains only Claude Code-specific directives.

## Claude Code Settings

Claude Code should read and follow all instructions in `AGENTS.md` at the repository root for project conventions, commands, risk tiers, workflow rules, and anti-patterns.

## Build & CI Workflow

**Local compile check (use this during development):**
```bash
# In WSL
cargo check
```
Use `cargo check` in WSL to verify the code compiles after making changes. This is fast and does not trigger CI.

**CI build (use this when ready for system testing):**
The aarch64 binary build workflow (`Build Linux aarch64`) is manual-only. Trigger it from the GitHub Actions UI when the change is considered ready for deployment to EC2:
1. Go to Actions → Build Linux aarch64 → Run workflow
2. Select the branch and click Run
3. Once complete, deploy with `scripts/deploy.ps1 <run-id>` from the workspace

Do **not** rely on CI as a compile check during development — use WSL `cargo check` instead.

## Hooks

_No custom hooks defined yet._

## Slash Commands

_No custom slash commands defined yet._
