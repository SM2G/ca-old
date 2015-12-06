# Cerbere App

## Requirements

* Postgres
* Redis

## Installation

```
$ bundle install
$ cp config/application.yml.sample config/application.yml # and edit it
$ rake db:migrate
$ rake db:seed
```

## Execution

```
$ foreman start
```
