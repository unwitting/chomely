# Notes

## Why Postgres in production / SQLite in dev?

Ideally a real app would use the same DB driver in all environments (to make sure there are no differences in behaviour, functionality etc), however for the sake of getting the app running in a place that's free and easy to share with Care Sourcer I've just chosen the simplest to configure in both environments. Heroku will create a Postgres database automatically and use it without configuration, and SQLite requires no dev environment configuration.

## Testing

The project uses rspec for testing, supported by FactoryBot. These seem to make up a de facto standard test suite and integrate very easily with Clearance to provide useful authentication helpers like `visit page(as: create(:user))`.

## Frontend framework

I looked into integrating React / SCSS modules for the frontend since that's a familiar and powerful option for me. I used `react-rails` for this and had some success (on the `[react-integration](https://github.com/unwitting/chomely/tree/react-integration)` branch), but hit enough hurdles integrating with Clearance's authentication / verification routes and mechanisms that I decided it didn't really fit into the brief! With that in mind I've stuck with standard Rails .html.erb views and bundled SCSS.

## Time taken

In all honesty I spent a bit more than four hours on this, in no small part because it's the first Ruby or Rails I've written so I was doing a lot of learning along the way! I tried to strike a balance between sticking to the minimal brief and trying to get a good grasp on the platform and its ecosystem.

## JSON endpoints

There are a set of JSON endpoints provided by the app alongside the normal web routes: [http://carehomely.herokuapp.com/rooms.json](http://carehomely.herokuapp.com/rooms.json), [http://carehomely.herokuapp.com/residents/1.json](http://carehomely.herokuapp.com/residents/1.json) etc. These make use of the jbuilder syntax for easily building responses.

## Stretch features

Some things I would've liked to build in for the sake of practise and learning more about Rails are listed below. I'd be happy to talk about how I might approach these:

1. A further set of models keeping track of an "audit log" of changes to rooms / residents.
2. Some extra controller methods added to do things like updating a resident's room to a given one, and usage of those from frontend AJAX calls for a more convenient UI.
3. A mobile-optimised UI. Whilst I would usually approach an app mobile-first, the fact that this is intended as an admin interface coupled with the time constraints meant I took the choice to focus on a desktop layout.
4. Separate backend and frontend codebases. Preferably this app would provide a data API only and be consumed by a separate React frontend with its own build pipeline etc.
