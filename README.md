# single-rackup-file-rails
A simple Rails app, with a single Rack config file

## What is this?
This is the result of following from a short series of four tweets by [Greg Molnar](https://twitter.com/GregMolnar/status/1556964177520066560). This is essentially a copy of his work, with a few small tweaks (primarily in locking down the Ruby and gem versions).

## What's it for?
It could be useful for learning, testing, or just playing around. It's a fun way to kill 5 - 10 minutes, or more... The series of tweets are here: https://twitter.com/GregMolnar/status/1556964177520066560

## Requirements
- Ruby 3.1.2
- Rails 7
- Bundler 2.3.18

## Running the app
1. Clone the repo and `cd` into the main app directory.
2. Install the gems: `bundle install`
3. Run `rackup app.ru`
4. **Note that this app does not run at port 3000 like a typical Rails app.** Open a browser at: `http://localhost:9292`
