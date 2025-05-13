# Docker Practice Project

## About the Project
A simple Laravel-based project used for **practicing Docker** containerization.

## Tech Stack
1. [PHP 8.2.3](https://www.php.net/releases/8.2/en.php) — using [Laravel 12](https://laravel.com/docs/12.x/releases)
2. [MySQL 8.0](https://dev.mysql.com/downloads/mysql/8.0.html)
3. [Nginx (latest)](https://nginx.org/en/download.html)

---

## Installation Guide

Before installation, ensure you have:
- [SSH keys configured with GitHub](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)
- [Docker installed on your system](https://docs.docker.com/engine/install/ubuntu/)

---

## Steps to Run (with Docker)

```bash
# Clone the repository
git clone https://github.com/YFayzulla/Docker-practice.git

# Navigate into the project folder
cd Docker-practice

# Copy environment file
cp .env.example .env

# Build and run containers
docker-compose up --build -d
