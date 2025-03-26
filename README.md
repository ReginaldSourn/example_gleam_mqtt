# EMQX and PostgreSQL Docker Compose Project

This project sets up a Docker environment for running EMQX (Erlang MQTT Broker) and PostgreSQL services using Docker Compose.

## Prerequisites

- Docker installed on your machine
- Docker Compose installed

## Project Structure

```
emqx-postgres-docker
├── docker-compose.yml
├── .env
└── README.md
```

## Getting Started

1. **Clone the repository** (if applicable):
   ```bash
   git clone <repository-url>
   cd emqx-postgres-docker
   ```

2. **Configure Environment Variables**:
   Edit the `.env` file to set your database credentials and any other necessary configuration for the EMQX service.

3. **Start the Services**:
   Run the following command to start the EMQX and PostgreSQL services:
   ```bash
   docker-compose up -d
   ```

4. **Access EMQX**:
   Once the services are running, you can access the EMQX dashboard at `http://localhost:18083` (default credentials: `admin` / `public`).

5. **Stopping the Services**:
   To stop the running containers, use:
   ```bash
   docker-compose down
   ```

## Services Overview

- **EMQX**: A scalable, open-source MQTT broker that supports a large number of concurrent connections and provides features like clustering and authentication.
  
- **PostgreSQL**: A powerful, open-source relational database system that uses and extends the SQL language.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.