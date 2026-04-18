# scaling-hipster

A Rails API backend for the Nomster project (a Yelp-style eatery-finder walkthrough), built early 2015 to practice API versioning patterns.

## Stack

- Ruby on Rails 4
- API-only namespacing under `/api/v1/`
- `api_constraints.rb` library for version routing via `Accept` headers
- RSpec (initial test setup)

## Points of interest

- `app/controllers/api/v1/places_controller.rb`: versioned controller pattern
- `lib/api_constraints.rb`: version-routing constraint for `Accept: application/vnd.nomster.v1`
- Paired with the `nomster` repository, the Rails-backed web front-end for the same domain (archived)

## Context

A small practice repository from the same 2014-2015 learning arc as `drunken-octo-spice`. Not maintained since 2015.
