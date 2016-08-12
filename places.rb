module Places
  def self.grocery(address)
    GoogleMaps::Places.nearbysearch({location: address, keyword: 'Grocery', type: 'grocery_or_supermarket'})
  end

  def self.hospital(address)

  end

  def self.shopping(address)

  end

  def self.universities(address)

  end

  def self.restaurants(address)

  end

  def self.restaurants(address)

  end
end
