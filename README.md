# single-rackup-file-rails
A simple Rails app, with a single Rack config file (All of the configuration is in `app.ru`.

## What is this?
This is the result of following from a short series of four tweets by [Greg Molnar](https://twitter.com/GregMolnar/status/1556964177520066560), and all credit goes to him. This is essentially a copy of his work, with a few small tweaks (primarily in locking down the Ruby and gem versions).

![rails_single_rackup_file](https://user-images.githubusercontent.com/608617/187301258-3552a37f-8e97-4628-b431-06ed8e6d3472.jpg)

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

