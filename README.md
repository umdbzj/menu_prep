# README

This is an example application for a "random" menu generator requested by my spouse, 
who does not like to plan meals.  As is typical for an agile application, this will
evolve as he decides what features he wants.  


## Phase 1

Phase one simply includes several tables in the database without any relationship 
between them.  The database is populated with seed.db and the views are pretty simple.

## License

You are free to copy and use any of this code for your own purposes, just give
attribution.  

## Getting Started

To get started with the app, clone the repo and install the needed gems:
$ bundle install --without production


Next, migrate the database:
$ rails db:migrate

Finally, run the test suite to verify that everything is working correctly:
$ rails test

If the test suite passes, you are ready to run the app in a local server:
$ rails server



