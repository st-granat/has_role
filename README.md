has_role
===========

Useful role methods for Rails User model

## Install

Install gem:

    gem "has_role"

Migration:

    create_table :users do |t|
      ...
      t.string :role
      ...

user.rb:

    has_role
