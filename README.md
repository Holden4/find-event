# Find-Event
[![Build Status](https://travis-ci.org/Holden4/find-event.png)](https://travis-ci.org/Holden4/find-event) -->
[![Coverage Status](https://coveralls.io/repos/github/Holden4/find-event/badge.svg?branch=master)](https://coveralls.io/github/Holden4/find-event?branch=master)

A command line application that takes a set of users X and Y coordinates, and returns the 5 closest events to the user.

### Output Example
Event 046 -  $31.65, Distance 1

Event 003 -  $63.87, Distance 3

Event 020 -  $93.85, Distance 5

Event 022 -  $29.71, Distance 4

Event 073 -  $35.30, Distance 6

|Event ID| - |Price|, |Distance From User|

## Task Requirements

Your program should randomly generate seed data
Your program should operate in a world that ranges from -10 to +10 (Y axis), and -10 to +10 (X axis)
Your program should assume that each co-ordinate can hold a maximum of one event
Each event has a unique numeric identifier (e.g. 1, 2, 3)
Each event has zero or more tickets
Each ticket has a non-zero price, expressed in US Dollars
The distance between two points should be computed as the Manhattan distance

## Thoughts

### Seeding
My inital thought was to create the app using Ruby On Rails, so I would be able to randomly seed the data into a relational database. However I couldn't find a way to seed the data whilst trying to keep it inbetween the parameters of the x and y axis -10,9,8.. to ..8,9,10.

In the end I used [Mockaroo](https://www.mockaroo.com/) to generate random seed data into a .csv.
Ruby can parse the CSV file as JSON as it is prebuilt into the language. You just need to include "'require json'" at the top of the file.

### Technologies Used

**Ruby**

**RSpec**

### How to Run The Code

Clone this repo

The project is a command-line application.

Start up irb

Require the file require './lib/grid_map.rb'

Create a grid_map: grid_map = GridMap.new

Call method to find events grid_map.find_closest_events(desired coordinates)

Example: grid_map.find_closest_events(3,4)

Output will be displayed

#### Running The Tests

Run rspec in the command-line
See 10 tests pass
Assumptions

### Ideas For Improvement & Extension

.I would want to shift the program out of the command line interface as I orignally invisiged, and design a user interface more like the example below.

![Alt text](http://imgur.com/gklWkJj)

Support multiple ticket prices at a single location
Having multiple ticket prices inside an array which is inside the hash.
Supporting multiple events at the same location.
I would consider adding a date attribute for each event to distinguish which events were output when finding the closest five.
Specificy the event search at certain locations, including upscaling of the grid square.
I would have an 'Area' class which would create a grid for a specific location of a specific size (e.g. this is X= -10 to 10 and Y= -10 to 10).
When finding the five closest events I would ensure that the app required the user to input a location before the specific coordinates.
I would add a location attribute to each event so that when events were assigned to a cell, the events were added to the cell at the correct location.
