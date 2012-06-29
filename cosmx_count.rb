require 'json'
class CosmxCount < Sinatra::Base
  get '/' do
    response = HTTParty.get("http://api.cosm.com/v2/feeds.json?tag=app%3Aname%3DCosmX&content=summary&key=#{ENV['API_KEY']}")
    json = JSON.parse(response.body)
    json['totalResults'].to_s
  end
end
