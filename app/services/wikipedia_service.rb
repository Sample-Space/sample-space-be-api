class WikipediaService

  def self.pid_extract(celestial_body)
    response = conn.get("/w/api.php") do |req|
      req.params['action'] = "query"
      req.params['list'] = "search"
      req.params['srsearch'] = celestial_body
      req.params['prop'] = "extracts"
      req.params['utf8'] = ""
      req.params['format'] = "json"
      req.params['srlimit'] = "1"
    end

    extract(response)
  end

  def self.page_summary(celestial_body)
    @page_id = pid_extract(celestial_body)

    response = conn.get("/w/api.php?format=json&action=query&prop=extracts&exlimit=max&explaintext&exintro") do |req|
      req.params['format'] = "json"
      req.params['action'] = "query"
      req.params['exsentences'] = "3"
      req.params['pageids'] = @page_id
      req.params['utf8'] = ""
    end

    formatted = format(response)
    id_to_key = @page_id.to_s.to_sym

    return [get_title(id_to_key, formatted), get_description(id_to_key, formatted)]
  end


  private

  def self.conn
    Faraday.new(url: "https://en.wikipedia.org")
  end

  def self.extract(response)
    data = JSON.parse(response.body, symbolize_names: true)[:query][:search][0][:pageid]
  end

  def self.get_title(id, response)
    response[:query][:pages][id][:title]
  end

  def self.get_description(id, response)
    response[:query][:pages][id][:extract]
  end

  def self.format(response)
    data = JSON.parse(response.body, symbolize_names: true)
  end
end
