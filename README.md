<p align="center">
    <img src="./docs/logo.png" width="400" alt="logo">
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

#### URL: https://prod-rails-ecommerce.com/

### Gem 💎

<details>
  <summary>List</summary>

- [devise * ユーザー認証系](https://github.com/heartcombo/devise)
- [stripe * Stripe決済](https://github.com/stripe/stripe-ruby)
- [aws-sdk-rails * Amazon Web Service SDK](https://github.com/aws/aws-sdk-rails)
- [bullet * N+1検知](https://github.com/flyerhzm/bullet)
- [factory_bot_rails * ダミーデータ作成](https://github.com/thoughtbot/factory_bot_rails)
- [rspec-rails * テストフレームワーク](https://github.com/rspec/rspec-rails)
- [capybara * システムテストの自動化](https://github.com/teamcapybara/capybara)
- [selenium-webdriver * システムテストの自動化](https://github.com/SeleniumHQ/selenium/tree/trunk/rb)
- [shoulda-matchers * モデルテストの記述省略化](https://github.com/thoughtbot/shoulda-matchers)
- [rubocop-rails * 自動フォーマット](https://github.com/rubocop/rubocop-rails)
- [capistrano * デプロイ用](https://github.com/capistrano/capistrano)
- [yard * ドキュメント生成](https://github.com/lsegal/yard)

</details>

### Node 🕸️

<details>
  <summary>List</summary>

- [tailwindcss * CSSフレームワーク](https://github.com/tailwindlabs/tailwindcss)

</details>

## Relation Diagram

<p align="center">
    <img src="./docs/relation_diagram.png" width="600" alt="er">
</p>

## Infrastructure

<p align="center">
    <img src="./docs/infrastructure.png" width="600" alt="infrastructure">
</p>

# Project Description

## Directory Structure

```
├── .github/
│   ├── workflows/              # Github Actions configuration files

├── app/
│   ├── controllers/            # Contains controller files for the application logic
│   ├── models/                 # Includes model files representing the data structures
│   ├── views/                  # Holds view templates for rendering web pages

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

### Git Flow

- `develop` - staging environment
- `release` - pre marge main branch
- `main` - production environment

pull request flow : `develop -> release -> main`

issue flow : `issue -> develop`,
branch name : `feature/issue#1` or `fix/issue#1`

### Local Development Setup

### `.env`

create .env file to copy .env.example file.

```sh
cp .env.example .env
```

update .env file content in your environment

```dotenv
# .env
export COMPOSE_PROJECT_NAME=ecommerce
export POSTGRES_DB=ecommerce

THOR_SILENCE_DEPRECATION=true
```

Create aws credential file 🔑

```sh 
EDITOR="cursor --wait" rails credentials:edit 
```

```yaml
  aws:
    access_key_id: hogehoge
    secret_access_key: foofoo

  stripe:
    publishable_key: hogehoge
    secret_key: foofoo
    endpoint_secret: barbar

  gmail:
    email: hogehoge
    app_password: foofoo

  db:
    password: hogehoge
    hostname: foofoo
```

```sh
rails db:migrate
```

## Command

### `Docker`

#### Build everything:

```sh
docker-compose build --no-cache
docker-compose up -d
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

### `deploy`

```sh
bundle exec cap production deploy
```
