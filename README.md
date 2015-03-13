---
tags: kids, ruby, giphy, apis
languages: ruby
level: 1
type: Intro, Documentation
---

##Giphy
Step right up and get your gifs [here](http://giphy.com/)! Giphy makes it super easy to pull animated gifs into your project.

##Using the Giphy API
There are several different JSON endpoints (essentially URLs) that can be used to access the Giphy API: search, GIF by id, GIFs by id, translate, random and trending. You can find instructions for all of these endpoints in [Giphy's API documentation](https://github.com/Giphy/GiphyAPI). We're going to go over how to use the search endpoint.

###Search
Using the search endpoint is as simple as construction a URL with the search parameters you need. Here is an example of how you would search for funny cat pics:
```
http://api.giphy.com/v1/gifs/search?q=funny+cat&api_key=dc6zaTOxFJmzC
```

You can see the base URL:
```
http://api.giphy.com/v1/gifs/search
```
this points to the search endpoint. This is followed by a

`?`

which indicates - Hey! Some custom parameters are coming up.

Then you have

`q=funny+cat`

which is our query for gifs tagged with `funny` and `cat`. Then

`&`

which indicates - Hey! Here is another URL parameter.

`api_key=dc6zaTOxFJmzC`

This is an API key provided by Giphy. Every request you make must have this api key on the end of it. So... pop quiz! Which parts of this URL
```
http://api.giphy.com/v1/gifs/search?q=funny+cat&api_key=dc6zaTOxFJmzC
```
would you change if you want to search for sad penguins instead of funny cats?




