require 'json'

# This walkthrough gives and example of iterating

class ParseJson

  attr_accessor :json_file
  # Initialise the read and parsing of the JSON file
  # When providing an argument to an initialise method means you must give class initialisation with the argument
  def initialize(json_file)
    @json_file = JSON.parse(File.read(json_file))
  end

  def get_base_value
    @json_file['base']
  end 

  def get_date_string
    @json_file['date']
  end 

  def get_rates_number
    @json_file['rates'].count
  end 

  
  

end
