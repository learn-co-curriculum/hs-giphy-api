---
tags: kids, ruby, giphy, apis
languages: ruby
level: 1
type: Intro, Documentation
---

##Giphy
Step right up and get your gifs [here](http://giphy.com/)! Giphy makes it super easy to pull animated gifs into your project.

##Using the Giphy API
There are several different JSON endpoints (essentially URLs) that can be used to access the Giphy API. You can find instructions for using all of the endpoints in [Giphy's API documentation](https://github.com/Giphy/GiphyAPI). We're going to go over how to use the search endpoint here.

###Search
Using the search endpoint is all about setting up a URL with the proper parameters. Here is an example of how you would search for funny cat pics:
```
http://api.giphy.com/v1/gifs/search?q=funny+cat&api_key=dc6zaTOxFJmzC
```

Let's break this down into parts. First you have the base URL for the search endpoint:

```
http://api.giphy.com/v1/gifs/search
```
Followed by a

`?`

which indicates - Hey! Some custom parameters are coming up. The first parameters are:

`q=funny+cat`

Which is a query (q for query) for gifs tagged with `funny` and `cat`.

Followed by a

`&`

which indicates - Hey! Another URL parameter is coming at you:

`api_key=dc6zaTOxFJmzC`

This is an API key provided by Giphy. Every request you make must have this api key on the end of it. So... pop quiz! How would you change this URL below to look for sad penguins instead of funny cats?

```
http://api.giphy.com/v1/gifs/search?q=funny+cat&api_key=dc6zaTOxFJmzC
```

Copy and paste the url into your browser to see the JSON response that Giphy is going to send back to you. If you see a bunch of indecipherable bunched up text, download this [JSON chrome extension](https://chrome.google.com/webstore/detail/jsonview/chklaanhfefbnpoihckbnefhakgolnmc?hl=en).






