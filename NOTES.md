# Notes

I'll keep notes to include with the submission here as I work and tidy
them up at the end.

## Why Postgres in production / SQLite in dev?

Ideally a real app would use the same DB driver in all environments (to make sure there are no differences in behaviour, functionality etc), however for the sake of getting the app running in a place that's free and easy to share with Care Sourcer I've just chosen the simplest to configure in both environments. Heroku will create a Postgres database automatically and use it without configuration, and SQLite requires no dev environment configuration.

It's a convenience to give me somewhere to host the app for submission rather than a good production architecture choice.