require 'json'

class MusixMatchApiResponse
  def initialize response:
    @response = JSON.parse response, object_class: OpenStruct
  end

  def header
    @response.message.header
  end

  def body
    @response.message.body
  end
end
