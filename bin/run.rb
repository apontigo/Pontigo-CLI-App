require_relative "../lib/environment.rb"

parsed_url = URI.parse"https://pokeapi.co/api/v2/type/"
response = Net::HTTP.get_response(parsed_url)
type_array = JSON.parse(response.body)["results"]

type_array.each do |type|
    url = type["url"]
    name = type["name"]

    parsed_type_url = URI.parse(url)
    url_response = Net::HTTP.get_response(parsed_type_url)
    type_hash = JSON.parse(url_response.body)
    generation_url = type_hash["generation"]["url"]


    parsed_generation_url = URI.parse(generation_url)
    generation_url_response = Net::HTTP.get_response(parsed_generation_url)
    generation_hash = JSON.parse(generation_url_response.body)
    generation_name = generation_hash["name"]

    region = Region.new(generation_name)
    type = Type.new(name, region)


    
end




