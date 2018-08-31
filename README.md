# README

## Local setup

### Dependencies

  - Ruby v2.5.1
  - Postgres v10.3+

### After initial repo checkout

#### Setup

Take a look at the `.env.development` file. This file contains all necessary enviroment variables for running the system in development, with suggested values for each one.

If you need to use a different value for any env var on your machine, create a new file named `.env.development.local` and put the env var and new file there. Anything on `.env.development.local` will override the previously set value on `.env.development`. The `.env.development.local` file will be ignored by version control.

Make sure `DATABASE_URL` env var ir correct for your enviroment (point to valid Postgres service with correct username and password).

If you use [direnv](https://github.com/direnv/direnv) (recommended), you may copy the `.envrc.example` file to `.envrc` (which will be ignored by version control) to automatically setup your local shell.

Install all gems and create the development database for the first time:

```bash
$ bundle install
$ bin/rails db:setup
```

#### Running the application in development

Make sure you have the latest code, all gems installed and the database is up to date:

```bash
$ git pull
$ bundle install
$ bin/rails db:migrate db:seed
```

Now actually run the application:

```bash
$ bin/rails s
```

## Endpoints and Payloads

Actually, we have two endpoints:

### Customers

```
GET /api/v1/customers
```
```json
{
  "customers": [
    {
      "name": "Márcio Braga",
      "email": "marcio.braga@minhaempresa.com.br",
      "phone": "(21) 98987-7650",
      "status": "paying",
      "subscription_amount": 250.99,
      "profile_url": null
    },
    {
      "name": "Felipe Cardoso",
      "email": "felipe.cardoso@minhaempresa.com.br",
      "phone": "(21) 98987-7651",
      "status": "paying",
      "subscription_amount": 250.99,
      "profile_url": null
    },
    {
      "name": "Maria Silva",
      "email": "maria.silva@minhaempresa.com.br",
      "phone": "(21) 98987-7652",
      "status": "overdue",
      "subscription_amount": 750.99,
      "profile_url": null
    },
    {
      "name": "Eduardo Lopes",
      "email": "eduardo.lopes@minhaempresa.com.br",
      "phone": "(21) 98987-7653",
      "status": "overdue",
      "subscription_amount": 250.99,
      "profile_url": null
    },
    {
      "name": "Nathalia Amaral",
      "email": "nathalia.amaral@minhaempresa.com.br",
      "phone": "(21) 98987-7654",
      "status": "paying",
      "subscription_amount": 150.99,
      "profile_url": null
    },
    {
      "name": "Maria Fernanda",
      "email": "maria.fernanda@minhaempresa.com.br",
      "phone": "(21) 98987-7655",
      "status": "overdue",
      "subscription_amount": 250.99,
      "profile_url": null
    },
    {
      "name": "Roberto Duarte",
      "email": "roberto.duarte@minhaempresa.com.br",
      "phone": "(21) 98987-7656",
      "status": "overdue",
      "subscription_amount": 950.99,
      "profile_url": null
    }
  ]
}
```

### Profile

```
GET /api/v1/profile
```
```json
{
  "name": "Márcio Braga",
  "email": "marcio.braga@minhaempresa.com.br",
  "phone": "(21) 98987-7650",
  "status": "paying",
  "subscription_amount": 250.99,
  "profile_url": null
}
```

## Deploying

### Initial setup

Make sure you have the Heroku git repos configured on your machine:

```bash
$ heroku git:remote -r production -a desafio-frontend
```

### To production

```bash
$ heroku maintenance:on -a desafio-frontend # only needed if there‘s expected migration with downtime
$ git push production master
$ heroku run "bin/rails db:migrate" -a desafio-frontend # only required if there are new migrations
$ heroku maintenance:off -a desafio-frontend # if set as ON before
$ heroku ps -a desafio-frontend
```
