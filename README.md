<p align="center">
    <img src="./docs/logo.png" width="300" alt="logo">
</p>

<p align="center">
<img src="https://img.shields.io/badge/Ruby-3.1.2-red.svg?logo=ruby&style=flat" alt="Ruby 3.1.2">
<img src="https://img.shields.io/badge/Rails-7.0.4-orange.svg?logo=ruby-on-rails&style=flat" alt="Rails 7.0.4">
<img src="https://img.shields.io/badge/rspec--rails-6.0.3-brightgreen.svg" alt="rspec-rails 6.0.3">
<img src="https://img.shields.io/badge/Tailwind CSS-3.2.4-green.svg?logo=tailwind-css&style=flat" alt="Tailwind CSS 3.2.4">
<img src="https://img.shields.io/badge/PostgreSQL-15.x-blue.svg?logo=postgresql&style=flat" alt="PostgreSQL 15.x">
<img src="https://github.com/nickjj/docker-rails-example/workflows/CI/badge.svg?branch=main" alt="PostgreSQL 15.x">
</p>

# Rails Ecommerce Application 🛍

### Admin Sample Page 👨‍🏫

<p align="center">
    <img src="./docs/admin-sample.png" alt="logo">
</p>

### Customer Sample Page 🛒

<p align="center">
    <img src="./docs/customer-sample.png" alt="logo">
</p>

### Add Gem package 📦

<details>
  <summary>Using package list</summary>

- [devise * ユーザー認証](https://github.com/heartcombo/devise)
- [stripe * Stripe決済](https://github.com/stripe/stripe-ruby)
- [aws-sdk-s3 * AWS S3 SDK](https://github.com/aws/aws-sdk-ruby)
- [bullet * N+1の通知](https://github.com/flyerhzm/bullet)
- [rspec-rails * テストフレームワーク]()
- [factory_bot_rails * ユーザー認証]()
- [capybara * システムテスト用]()
- [selenium-webdriver * システムテスト用]()
- [shoulda-matchers * モデルテストの記述省略]()
- [rubocop * 自動フォーマット]()
- [yard * ドキュメント生成]()
- [capistrano * デプロイ用]()

</details>

### Add Node Modules 📦

<details>
  <summary>Using module list</summary>

- [tailwindcss * CSSフレームワーク]()
</details>

### teaching materials link 📚

https://zenn.dev/farstep/books/7f169cdc597ada

# Directory Structure 📁

```
├── .github/
│   ├── workflows/              # Github Actions configuration files

├── app/
│   ├── controllers/            # Contains controller files for the application logic
│   ├── models/                 # Includes model files representing the data structures
│   ├── views/                  # Holds view templates for rendering web pages
│   ├── services/               # Houses service classes and modules

├── config/
│   ├── routes.rb               # Defines the application's routing configuration
│   ├── credentials.yml.enc     # File for storing confidential information (e.g., API keys)

├── db/                         # Contains database schema and migration files

├── docs/                       # Stores documentation files for the project

├── spec/
│   ├── models/                 # Contains RSpec tests for models
│   ├── modules/                # Contains RSpec tests for modules
│   ├── requests/               # Contains RSpec tests for request/response handling
│   ├── support/                # Holds support files for RSpec configuration
│   ├── system/                 # Includes RSpec tests for system-level functionality

├── Capfile                     # Configuration file for Capfile
├── .rspec                      # Configuration file for RSpec test suite
├── .rubocop.yml                # Configuration file for the RuboCop code analyzer
├── docker-compose.yml          # Configuration file for Docker Compose
├── Dockerfile                  # Docker container build instructions
├── Gemfile                     # Lists project dependencies in RubyGems format
├── Gemfile.lock                # Lock file specifying exact dependency versions
├── yarn.lock                   # Lock file for Yarn package manager
```

# Infrastructure

<p align="center">
    <img src="./docs/infrastructure.png" width="400" alt="logo">
</p>

# DB Structure

Creating... 📝

# Participation in Projects

### `.env`

create .env file to copy .env.example file.

```sh
cp .env.example .env
```

update .env file content in your environment

```dotenv
export COMPOSE_PROJECT_NAME=ecommerce
export POSTGRES_DB=ecommerce

THOR_SILENCE_DEPRECATION=true
```

Create aws credential file 🔑

```sh
# Select your ide "code" 
EDITOR="code --wait" rails credentials:edit
```

### `rails`

```sh
# run migration
rails db:migrate
```

# Command

### `Docker`

#### Build everything:

```sh
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

### `Bundle`

```sh
# install gems
bundle install
# add annotate comment to model file
bundle exec annotate --models 
```

### `rubocop`

```sh
# Static analysis command
rubocop
# Auto fix command
rubocop --auto-correct-all
```

### `rspec`

```sh
# Run all test file
bundle exec rspec
# Run select test file
bundle exec rspec spec/system/
```

### `yard`

```sh
bundle exec yard
bundle bundle exec yard server
```

### `stripe`

```sh
# build stripe webhook server
stripe listen --forward-to localhost:8000/webhooks
```

### `deploy`

https://capistranorb.com/

```sh
bundle exec cap production deploy
```
