 require 'twitter'
 require 'dotenv'

 Dotenv.load

 client = Twitter::REST::Client.new do |config|
   config.consumer_key        = ENV["CONSUMER_KEY"]
   config.consumer_secret     = ENV["CONSUMER_SECRET"]
   config.access_token        = ENV["ACCESS_TOKEN"]
   config.access_token_secret = ENV["ACCESS_TOKEN_SECRET"]
 end

array=["@DTerminaTD", "@KeithCaprio", "@MyaOw", "@louloudeetz", "@Bikibi1"]
  array.each do |handle|
  client.update("Coucou #{handle} J'ai fait un bot twitter et je le teste sur toi, désolée <3 ")
  end


