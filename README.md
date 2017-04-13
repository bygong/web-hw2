# Week 1 - Homework

*5 points*

**DUE: MONDAY, APRIL 17, 12pm noon**

### Overview

Let's build a UChicago Visitor's Guide.  Our job is to come up with something better than http://architecture.uchicago.edu/.

We will start this week with a simple photo collection of interesting landmarks around campus.


### Getting Started

1. Download a ZIP of this repository.  Unzip the contents.
2. In your Terminal or Command Prompt, `cd` to the application's root directory.
3. `bundle install`
4. `rails server`.  Puma should start up on port 3000.
5. Browse to `localhost:3000`.  You should see a Rails welcome page.
6. Browse to `localhost:3000/places`.  You should see some photos of landmarks.
7. Click on any photo.  You should go to a details page. Notice the URLs.

Your job is to replace these static pages with data-driven, dynamic pages.



### Step 1: Data-Driven `http://localhost:3000/guide`

**User Story**

As a visitor, I want to browse to `http://localhost:3000/guide` to see the list of places to visit.

**Requirements**

1. Your url should be implemented with a controller named `LandmarksController`
2. The action should be named `index`
3. I've started a model class named `Landmark` to provide the data (`app/models/landmark.rb`).
4. Implement `Landmark.all` to return a list of landmark objects.
5. Follow the RCAV recipe to build the new view.

When you're finished, going to `http://localhost:3000/guide` should look very similar to the mockup for `http://localhost:3000/places`.



### Step 2: Data-Driven `localhost:3000/guide/:id`

**User Story**

As a visitor, I want to click on a landmark to see lots of interesting details.

**Requirements**

1. Your url should be implemented with a controller named `LandmarksController`
2. The action should be named `show`
3. Implement `Landmark.find_by(id)` to return a single Landmark object given its `id`.  Return `nil` if no such `id` exists.
4. Follow the RCAV recipe to build the new view template.

When you're finished, going to `http://localhost:3000/guide/:id` should look very similar to the original details mockup.

At this point, all links should work from one page to the next.

### HINTS

* Got some HTML that's duplicated across many pages?  Try using the layout instead (`app/views/layouts/application.html.erb`)
* The crazy-looking HTML you see is due to the [Bootstrap CSS Framework](https://getbootstrap.com/).  If you're interested in learning more about CSS and Bootstrap, I'll try to record a screencast in the near future.
* Refer to the `Flight` model we used in class as an example.

### Turn It In

These instructions are important.

2. Create a new repository named `mpcs52553-hw2` in your GitHub/BitBucket account.
3. Push this code into the repository.

Note: You can actually do these steps anytime, and continually commit & push as you go along.  We won't assume you've turned anything in until the deadline.

### Rubric

* 2 points for a data-driven `localhost:3000/guide`
* 2 points for a data-driven `localhost:3000/guide/:id`
* 1 point for code readability
