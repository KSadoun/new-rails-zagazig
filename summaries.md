# Migrations
A migration is a schema migration not data migration.
Migrations use schema-altering SQL commands under the hood, similar to how the Model makes SQL queries for you.
Migrations are needed during the early developmental step of setting up the project’s data models.
There are two main ways to create a migration file. The first is to use the model generator $ rails generate model YourModelNameHere. The second is to use the migration generator $ rails generate migration NameYourMigration.
To complete the migration and actually apply the changes to the schema, use the $ rails db:migrate command
The most immediately useful feature of migrations is when you’ve screwed something up because they’re (usually) reversible


# Active Record Pattern vs. Repository Pattern: Making the Right Choice
people have tried to connect between the object oriented world and the relational db world by using different design patterns
mainly active record pattern and the repository pattern
1. the active record pattern provides crud methods to deal with the DB instead of raw sql statements
2. in the repository pattern, a data mapper layer is between the db and the business layer to ensure all db operations are seaparated from the business logic
in limited size applications using active record might be the better option but when the application gets larger, the repository pattern is much more logical for SOC and modular design