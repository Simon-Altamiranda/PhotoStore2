PhotoStore 2
=======

Dependencies
-------

 - Ruby 2.1.3
 - Bundler 1.5.2
 - Rails 4.2.0
 - SQLite3 (Development & Test)

Quick start
-------

If you satisfy all the dependencies you can clone the repository via git:


```
$ git clone git@github.com:jmax/PhotoStore2.git
```

And then go to your project folder and run:

```
$ bundle install
```

You also have to set up all environment variables and config your database settings, you can do it creating the following files (we have created a sample file inside the config folder so that you can use as a guide):

```
PhotoStore2/
└── config/
    └── database.yml   -> Database credentials
```

Now, you can migrate your database:

```
$ rake db:migrate
```

Populate the database:

```
$ rake db:populate
```

Links
-------

http://materializecss.com/
