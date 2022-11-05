class CharityService
  def self.conn
    Faraday.new(url: 'https://partners.every.org') do |faraday|
      faraday.params['apiKey'] = ENV['everyorg_api_key']
    end
  end

  def self.get_wildlife_charities
    response = conn.get('/v0.2/browse/wildlife')
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.get_animal_charities
    response = conn.get('/v0.2/browse/animals')
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.get_charity_by_slug(slug)
    response = conn.get("/v0.2/nonprofit/#{slug}")
    JSON.parse(response.body, symbolize_names: true)
  end
end
