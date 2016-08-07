require File.dirname(__FILE__) + '/../../spec_helper'

RSpec.describe MusixMatchApiConnection do

  subject { MusixMatchApiConnection }

  before(:all) do
    stub_request(:get, /api.musixmatch.com/).
      to_return status: 200, body: '{}', headers: {}
  end

  describe '#request' do
    it 'provides a response object' do
      response = subject.new(api_key: 'api_key').
        request method: :get, url: '/test', params: { hi: 'hello' }

      expect(response).to be_an_instance_of(MusixMatchApiResponse)
    end
  end
end
