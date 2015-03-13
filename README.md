---
tags: kids, ruby, giphy, apis
languages: ruby
level: 1
type: Intro, Documentation
---

##Giphy
Step right up and get your gifs [here](http://giphy.com/)! Giphy makes it super easy to pull animated gifs into your project.

##Using the Giphy API
There are several different JSON endpoints (essentially URLs) that can be used to access the Giphy API. You can find instructions for using all of the endpoints in [Giphy's API documentation](https://github.com/Giphy/GiphyAPI). We've provided a wrapper that will help you use the search, random and trending endpoints.

We'll go into more detail on how to use the search endpoint here.

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

which indicates - Hey! Another URL parameter is coming at you. The second parameter is:

`api_key=dc6zaTOxFJmzC`

This is an API key provided by Giphy. Every request you make must have this api key on the end of it - it's like a key unlocking the API.

So... pop quiz! How would you change this URL below to look for sad penguins instead of funny cats?

```
http://api.giphy.com/v1/gifs/search?q=funny+cat&api_key=dc6zaTOxFJmzC
```

Copy and paste the url into your browser to see the JSON response that Giphy is going to send back to you. If you see a bunch of indecipherable bunched up text, download this [JSON chrome extension](https://chrome.google.com/webstore/detail/jsonview/chklaanhfefbnpoihckbnefhakgolnmc?hl=en) to save your eyes.

This thing probably looks intimidating, but it's essentially a nested hash. Well... an array of nested hashes. Let's call this hash object `response`. If we want to pull the `data` array of this hash that would be `response["data"]`. Drill down deeper to the first item in that array - `response["data"][0]`. And if we wanted to pull the url for that image - `response["data"][0]["url"]`.

We've helped you out by setting up the search method in giph.rb. If you want to use the random or trending methods you'll need to take a look at the JSON response that you get back and drill down to get the info you want.





