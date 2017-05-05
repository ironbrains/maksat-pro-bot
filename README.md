# Maksat PRO bot

Telegram bot for [maksat.PRO](http://maksat.pro/) project

## Dependencies

* `ruby --version #=> 2.4.1`
* `rails --version #=> 5.1.0`

## How to run

Copy example config files to you local and change necessary values (e.g. db username, db password or telegram bot token)

```shell
cp config/database.example.yml config/database.yml
cp config/secrets.example.yml config/secrets.yml
```

Install gems
```shell
bundle install
```

Create database and run migrations

```shell
bundle exec rake db:create
bundle exec rake db:migrate
```

Run poller `bundle exec rake telegram:bot:poller` or use `rake bundle exec telegram:bot:set_webhook` to update webhooks