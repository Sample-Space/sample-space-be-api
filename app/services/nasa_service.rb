class NasaService

  def self.get_image(celestial_body)
    response = conn.get("/search") do |req|
      req.params['q'] = "#{celestial_body}"
      req.params['media_type'] = "image"
    end

    format(response)
  end



  private

  def self.conn
    Faraday.new(url: "https://images-api.nasa.gov")
  end


  def self.format(response)
    data = JSON.parse(response.body, symbolize_names: true)[:collection][:items][0][:links][0][:href]
  end
end
