require 'json'

json = File.read('json_example.json')

json_parse = JSON.parse(json)
puts json_parse