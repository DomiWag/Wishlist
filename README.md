# Wishlist
A rails application for tracking your wishes

## TODO
- Add missing tests
- Implement tagging functionality

## Models
1. Gift: Represents a gift (title, url, image, description), belongs to a user and has many tags.
2. User: Represents a user (email, password, etc) and has many gifts. Maintained by Devise.
3. Tag: Belongs to many gifts. Used to identify similar gifts.

All models have at least one useful validation.

## Tests
1. Scaffold generated tests
2. Tests for validations
3. Additional tests

## Gems
Front-End: Bootstrap

Additional Gems: Devise


# Installation
`bundle install`

`rake db:setup RAILS_ENV=test`

`rake test`
