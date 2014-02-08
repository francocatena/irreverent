# Irreverent

Rails responder customization (Inspired by Jose Valim's Crafting Rails 4 Apps Book)

The whole purpose is to use I18n in you flash messages, using only respond_with in the controller

## Build status [![Build Status](https://travis-ci.org/francocatena/irreverent.png?branch=master)](https://travis-ci.org/francocatena/irreverent)

## Installation

Just add it to your Gemfile:

```ruby
gem 'irreverent'
```

You should override the default Rails scaffold generator with:

```console
rails generate irreverent:install
```

## Customization

Edit your locales to add a generic flash response:

```yaml
en:
  flash:
    actions:
      create:
        notice: '%{resource_name} was successfully created'
        alert:  ''
      update:
        notice: '%{resource_name} was successfully updated'
        alert:  ''
      destroy:
        notice: '%{resource_name} was successfully destroyed'
        alert:  '%{resource_name} could not be destroyed'
```

You can customize it for one particular controller like this:

```yaml
en:
  users:
    create:
      notice: 'You just create a new user!'
    update:
      notice: 'You change it'
    destroy:
      notice: 'The user is no more'
      alert:  'You can not delete it'
```

## Released under the MIT LICENSE
