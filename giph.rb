require 'json'
require 'net/http'

class Giph

  #this method returns an array of image urls
  def search(keywords)
    #creates a string of keywords connected by +
    query = keywords.inject("") { |string, keyword| string + "+#{keyword}" }
    #applies that query string in an api call to the search endpoint
    response = get_api_response("http://api.giphy.com/v1/gifs/search?q=#{query}&rating=pg&api_key=dc6zaTOxFJmzC")
    #iterates through the response hash and collects the image url for each gif (25 gifs are returned by default)
    response["data"].collect { |gif| gif["images"]["original"]["url"] }
  end

  #this method returns one image url for a random gif
  def random(tags)
    tags = tags.inject("") { |string, tag| string + "+#{tag}" }
    response = get_api_response("http://api.giphy.com/v1/gifs/random?tag=#{tags}&rating=pg&api_key=dc6zaTOxFJmzC")
    response["data"]["image_url"]
  end

  #this method returns an array image urls
  def trending
    response = get_api_response("http://api.giphy.com/v1/gifs/trending?api_key=dc6zaTOxFJmzC")
    #the trending endpoint returns the top 25 trending gifs on Giphy
    response["data"].collect { |gif| gif["images"]["original"]["url"] }
  end

  #this method makes an HTTP call to the Giphy API and parses the JSON response to return a Ruby hash
  def get_api_response(endpoint)
    uri = URI(endpoint)
    api_response = Net::HTTP.get(uri)
    JSON.parse(api_response)
  end
end
