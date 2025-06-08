# Data Engineering with dbt and PostgreSQL

This project demonstrates data transformation and modeling using dbt (data build tool) with PostgreSQL as the data warehouse.

## Prerequisites

- Python 3.10 or higher
- PostgreSQL database
- pip (Python package manager)

## Installation

1. Create and activate a Python virtual environment:
   ```bash
   python -m venv .venv
   source .venv/bin/activate
   ```

2. Install dbt and PostgreSQL adapter:
   ```bash
   pip install dbt-postgres dbt-core
   ```

3. Verify installation:
   ```bash
   dbt --version
   ```

## Project Setup

1. Initialize a new dbt project:
   ```bash
   dbt init <project_name>
   ```

2. Configure your profiles:
   - Location: `~/.dbt/profiles.yml`
   - Example configuration:
     ```yaml
     your_project_name:
       outputs:
         dev:
           type: postgres
           host: localhost
           user: your_username
           password: your_password
           port: 5432
           dbname: your_database
           schema: your_schema
     ```

3. Project Structure:
   - `models/`: Contains your SQL models
   - `seeds/`: CSV files to be loaded into the database
   - `macros/`: Reusable SQL macros
   - `tests/`: Custom data tests
   - `snapshots/`: For tracking historical data changes

## Working with Seeds

1. Place your CSV files in the `seeds/` directory
2. Run the following command to load seed data:
   ```bash
   dbt seed
   ```
   - CSV files will be loaded into tables matching the file names
   - Data types are automatically inferred but can be customized in `seeds/schema.yml`

## Documentation

1. Generate documentation:
   ```bash
   dbt docs generate
   ```

2. Serve documentation locally:
   ```bash
   dbt docs serve
   ```

## Common Commands

- `dbt run`: Execute all models
- `dbt test`: Run all tests
- `dbt compile`: Compile SQL without running
- `dbt debug`: Check connection and configuration
- `dbt clean`: Remove compiled files

## Resources

- [PostgreSQL Setup Guide](https://docs.getdbt.com/docs/core/connect-data-platform/postgres-setup)
