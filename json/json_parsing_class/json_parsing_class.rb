require 'json'

class ParseJson
    attr_accessor :json_file

    def initialize(json_file)

    end

end

json = ParseJson.new('json_exchange_rates.json')