# SwiftPOS - Point of Sale System

A comprehensive point of sale solution designed for modern businesses. Manage inventory, process sales, track expenses, and generate reports — all from a single system.

## Features

- Multi-language support (English, Arabic, Kurdish Sorani, Kurdish Kurmanji)
- Business presets (Supermarket, Pharmacy, Electronics, Wholesale, General Store)
- Full POS with barcode scanning, promotions, and returns
- Inventory management with expiry tracking
- Order and vendor management
- Financial reports and analytics
- Role-based access control (Admin, Manager, Accountant, Cashier)
- Agent/sales rep portal
- Online shop with QR pickup
- Receipt customization
- License management (Trial / Pro / Enterprise)

## Quick Start

### Prerequisites

- [Docker](https://docs.docker.com/get-docker/) (Docker Desktop or Docker Engine)
- 2GB free RAM

### Setup

1. **Download the latest release** from the [Releases](../../releases) page:
   - `swiftpos-latest.tar.gz` (Docker image)

2. **Place the file** in this directory (next to `docker-compose.yml`)

3. **Run the setup script:**

   ```bash
   chmod +x setup.sh
   ./setup.sh
   ```

   Or manually:

   ```bash
   # Load the Docker image
   docker load -i swiftpos-latest.tar.gz
   docker tag ghcr.io/nullsam/swiftpos:latest swiftpos:latest

   # Start the system
   docker compose up -d
   ```

4. **Open** http://localhost:3000 in your browser

5. **Follow the setup wizard** to configure your system:
   - Choose your language
   - Select your business type and store name
   - Create your admin account
   - Activate a license key or start a free trial

### Managing SwiftPOS

```bash
# View logs
docker compose logs -f app

# Stop
docker compose down

# Restart
docker compose up -d

# Full reset (removes all data)
docker compose down -v
```

### Configuration

Environment variables can be set in `docker-compose.yml`:

| Variable | Description | Default |
|----------|-------------|---------|
| `DATABASE_URL` | PostgreSQL connection string | `postgresql://swiftpos:swiftpos@db:5432/swiftpos` |
| `JWT_SECRET` | Secret key for JWT tokens | `change-this-to-a-secure-random-string` |

> **Important:** Change `JWT_SECRET` to a secure random string for production use.

## System Requirements

- Docker Engine 20+ or Docker Desktop
- 2GB RAM minimum
- 1GB disk space
- Ports 3000 (app) and 5432 (database) available

## License

SwiftPOS is proprietary software. This distribution is provided for evaluation and testing purposes.

- **Free Trial:** 30 days with core features
- **Pro License:** Full feature access
- **Enterprise License:** Priority support + custom modules

Contact support for licensing inquiries.
