ChallengeChampion
==========================

## Installation
This application allows you to challenge your friends and turn them into enemies!

To get this app up and running, run these commands in console:

```bash
bundle install
```
```bash
rake db:create:all
```
```bash
rake db:migrate
```
```bash
rake db:test:prepare
```

These commands do the following:
  1. Install all of the necessary gems listed in the Gemfile
  2. Create the test and development databases based on the configuration specified in config/database.yml
  3. Add all of the tables and table attributes to the database defined in the migration files in db/migrate
  4. Add all of the tables and table attributes to the test database

Next, create a .env file in the application's root directory. Enter the environment variable names & values. You can generate a key and secret pair at:
https://dev.twitter.com/apps

```
TWITTER_KEY=
TWITTER_SECRET=
```

## Authors
* Melissa Holmes [@meltar](https://github.com/meltar)
* Kylie Stradley [@kstradley](https://github.com/kstradley)

