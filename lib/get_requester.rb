require 'open-uri'
require 'net/http'
require 'json'
require_relative

class GetRequester
    def initialize(url)
        @url = url
    end

    def get_response_body
        uri = URI.parse(@url)
        response = Net::HTTP.get_response(uri)
        response.body
    end

    def parse_json
        JSON.parse(self.get_response_body) # returns array of hashes
    end
end