# Crisalix test assessment

## Installation

Installation is simple as every good rails project should be

```
bundle install
yarn install
rails db:migrate
rails db:seed
rails s
```


## Credentials

You can use this credentials to access seeded doctors and patients:

```
doctor1@crisalix.com
doctor2@crisalix.com
patient1@crisalix.com
patient2@crisalix.com
```

## Developer notes
 - Didn't get too much tests (only one system test), I'd rather moved to RSpec, SitePrism etc but ran out of time.
 - Using slim instead of erb also was in plans, but it saved me some time when copying code from official bootstrap website.
 - Spend some time to saw undocumented Ralix features like ajax/get/post/innerHTML, but also ran out of time to show some complex components like modals
 - 3 days (each about 2-3hrs) were spent on this assessment

## Testing

```
bin/rails test test/system
```