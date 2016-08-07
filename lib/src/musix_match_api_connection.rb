class MusixMatchApiConnection
  def initialize api_key:
    @api_key = api_key
  end

  def request method:, url:, params:
    faraday_response = connection.send(
      method,
      url,
      params.merge({ apikey: @api_key })
    )

    MusixMatchApiResponse.new response: faraday_response.body
  end

  private

  def connection
    @connection ||= Faraday.new(url: api_root_url) do |conn|
      conn.request :url_encoded
      conn.response :logger
      conn.adapter Faraday.default_adapter
    end
  end

  def api_root_url
    'http://api.musixmatch.com/ws/1.1/'
  end
end
