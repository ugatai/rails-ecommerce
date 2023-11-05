<p align="center">
    <img src="./docs/logo.png" width="400" alt="logo">
</p>

<p align="center">
<img src="https://img.shields.io/badge/Ruby-3.1.2-red.svg?logo=ruby&style=flat" alt="Ruby 3.1.2">
<img src="https://img.shields.io/badge/Rails-7.0.4-orange.svg?logo=ruby-on-rails&style=flat" alt="Rails 7.0.4">
<img src="https://img.shields.io/badge/Tailwind CSS-3.2.4-green.svg?logo=tailwind-css&style=flat" alt="Tailwind CSS 3.2.4">
<img src="https://img.shields.io/badge/PostgreSQL-15.x-blue.svg?logo=postgresql&style=flat" alt="PostgreSQL 15.x">
</p>

# Rails Ecommerce Application 🛍

### Client Sample Page 🛒

continue...

### Admin Sample Page 📊

continue...

### Add Gem package 📦

<details>
  <summary>Using package list</summary>

- [devise]()
- [stripe]()
- [rspec-rails]()
- [factory_bot_rails]()
- [faker]()
- [rubocop]()
- [rubocop-rails]()
- [rubocop-performance]()

</details>

### Add Node Modules 📦

<details>
  <summary>Using module list</summary>

</details>

# Directory Structure 📁

```
continue...
```

# Infrastructure 🌐

continue...

# DB Structure ⎗

<p align="center">
    <img src="./docs/er.png" alt="er">
</p>

### `.env`

create .env file to copy .env.example file. 

```sh
cp .env.example .env
```

update .env file content

```dotenv
export COMPOSE_PROJECT_NAME=ecommerce
export POSTGRES_DB=ecommerce
THOR_SILENCE_DEPRECATION=true
```

### `Docker`

#### Build everything:

```do
docker-compose build --no-cache
```

#### Access to Docker application containers

```sh
docker-compose run --rm web bash
```

#### Stopping everything:

```sh
docker-compose down
```

# Command ⌨️

### `rails`

```sh
rails hogehoge
```

### `rubocop`

setting file - .rubocop.yml

```sh
# Static analysis command
rubocop

# Auto fix command
rubocop --auto-correct-all
```

### `rspec`

```sh
bundle exec rspec
```

### `deploy` 📲

```sh
```