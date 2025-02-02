# Docker Compose Pivoting Lab Setup

This repository provides a Docker Compose configuration for a pivoting lab.

Note: This repository doesn't have security hardening, so you'll need to modify the Dockerfile and docker-compose.yml yourself.

## Components

- **Jump Host**: Ubunto container used for penetration testing.
- **3 Targets**: 3 containers within the internal networks (Subnet A-B).

## Network Configuration

The Docker Compose setup uses a custom network with the following subnet:

- **Subnet A**: `172.16.100.0/24`
- **Subnet B**: `172.16.101.0/24`
- **Jump Host IP**:
  - IP Subnet A `172.16.100.11`
  - IP Subnet B `172.16.101.11`
- **Target1 ([OWASP Juice Shop](https://github.com/juice-shop/juice-shop)) IP**: `172.16.100.10`
- **Target2 ([SecureBank](https://hub.docker.com/r/ssrd/securebank)) IP**: `172.16.101.20`
- **Target3 (Nginx) IP**: `172.16.101.21`

## Prerequisites

- Docker
- Docker Compose

## Getting Started

1. **Clone the Repository**

   ```bash
   $ git clone https://github.com/stevejubx/pivoting-lab.git
   $ cd pivoting-lab
   ```

2. **Build and Start the Containers**

   ```bash
   $ docker-compose -f subnet.yml -f docker-compose.yml build
   $ docker-compose -f subnet.yml -f docker-compose.yml up
   ```

3. **SSH Jump Host**

   ```bash
   $ ssh -p 2222 root@localhost

   ### Default Password: 12345678 ##
   ```
