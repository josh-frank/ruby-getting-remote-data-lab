# Write your code here
require 'net/http'
require 'open-uri'
require 'json'

class GetRequester

    attr_accessor :url

    def initialize( this_url )
        @url = this_url
    end

    def get_response_body
        uri = URI.parse( self.url )
        response = Net::HTTP.get_response( uri )
        response.body
    end

    def parse_json
        JSON.parse( self.get_response_body )
    end

end
