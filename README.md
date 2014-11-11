# BUS36110 Fall 2014 Midterm, Part 2

## Introduction

This application has 3 database-backed web CRUD resources:

 - dishes (columns: id, name, cuisine)
 - venues (columns: id, name, address, neighborhood)
 - neighborhoods (columns: id, name, city)

As usual, each resource has 7 "golden" actions that allow users to interact with it:

### CREATE
 - new_form
 - create_row

### READ
 - index
 - show

### UPDATE
 - edit_form
 - update_row

### DELETE
 - destroy

There are bugs in many of the 21 actions required to CRUD our 3 resources. **Your first job** is to debug them all until you can create, read, update, and delete each of dishes, venues, and neighborhoods without running into any issues.

**Your second job** is to, on the show page for each venue, display the correct latitude and longitude of the venue based on the value in its address column. Currently, every venue shows the same latitude and longitude, which is wrong. Use Google's Geocoding API.

**For extra credit**, you can fix the embedded Google Map on the show page for each venue to be centered on its real address. Currently, every map is centered on the same location, which is wrong. Replace the static bits of the markup that you want to be dynamic with embedded Ruby.

Here is a fully functional version of the app, for your reference.

https://best-of-everything.herokuapp.com/

Make yours work like it. Your local app is using a light Bootswatch, and the reference app is using a dark Bootswatch; don't get confused between the tabs as you try to check your work.

## Setup

 1. **FORK** this repository to your own account.
 1. Clone your fork to your computer.
 1. `cd` to its location.
 1. `bundle install`
 1. `rake db:migrate` (To create the three tables on your machine; I have already written the instructions to do so.)
 1. `rake db:seed` (to pre-populate your tables with some data, so we can get straight to work. This step may take a while on Windows machines. You can open a new Command Line window to continue working while it runs.)
 1. `rails server`

Navigate to

http://localhost:3000

You should see a list of dishes. The `Dishes#index` action is functional, and I have set it to be the root URL.

From here, click through the app and debug. Try adding a new dish, updating a dish, looking at the details of a dish, and deleting a dish.

Sometimes you will get an error message; sometimes there won't be an error message, but the action just won't do its job. Use the server log to help figure out what's going on.

After fixing CRUD for Dishes, work on CRUD for Venues, then CRUD for Neighborhoods.

Then work on displaying dynamic latitude and longitude values on the venue details page.

Last, work on fixing the map, if you have extra time.
