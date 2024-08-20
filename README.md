# Docker Compose Pivoting Lab Setup
This repository provides a Docker Compose configuration for a pivoting lab.

## Components

- **Jumphost**: Ubunto container used for penetration testing.
- **3 Targets**: 3 Ubuntu containers within the internal networks (Subnet A-B).

## Network Configuration

The Docker Compose setup uses a custom network with the following subnet:
- **Subnet A**: `172.16.100.0/24`
- **Subnet B**: `172.16.101.0/24`
- **Jump Host IP**: 
    - IP Subnet A `172.16.100.11`
    - IP Subnet B `172.16.101.11`
- **Target1 IP**: `172.16.100.10`
- **Target2 IP**: `172.16.101.20`
- **Target3 IP**: `172.16.101.21`

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
   $ docker-compose -f docker-compose-subnet.yml -f docker-compose.yml build
   $ docker-compose -f docker-compose-subnet.yml -f docker-compose.yml up
   ```

