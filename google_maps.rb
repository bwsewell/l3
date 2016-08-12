module GoogleMaps
  def self.directions(args)
    args.merge!({key: API_KEY})
    sleep(0.2) # Don't hit any google rate limits
    DIRECTIONS_URI.query = URI.encode_www_form(args)
    res = Net::HTTP.get_response(DIRECTIONS_URI)
    trip = JSON.parse(res.body)['routes'][0]
    trip
  end

  def self.geocode(address)
    sleep(0.2) # Don't hit any google rate limits
    GEOCODE_URI.query = URI.encode_www_form({address: address, key: API_KEY})
    res = Net::HTTP.get_response(GEOCODE_URI)
    loc = JSON.parse(res.body)['results'][0]
    loc
  end

  module Places
    def self.nearbysearch(args)
      args.merge!({key: API_KEY})
      sleep(0.2) # Don't hit any google rate limits
      geocoded = GoogleMaps.geocode(args[:location])['geometry']['location']
      args[:location] = "#{geocoded['lat']},#{geocoded['lng']}"
      PLACES_URI.query = URI.encode_www_form(args)
      res = Net::HTTP.get_response(PLACES_URI)
      place = JSON.parse(res.body)['results'][0]
      place
    end
  end
end
