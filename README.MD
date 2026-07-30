# Containerized CLI Login System

A secure, interactive command-line login system written in Go. Features include user registration, secure password hashing, TOTP-based 2FA, session management, and brute-force protection.

## Prerequisites
- Docker and Docker Compose installed.

## Setup Instructions

1. **Build and Start the Containers:**
   Run the following command in the root directory to build the app and spin up the database:
   ```bash
   docker-compose up -d

  then followed by the command
  docker attach cli_app