require_relative "../lib/environment.rb"

url = "https://pokeapi.co/api/v2/pokemon/"
parsed_url = URI.parse(url)
response = Net::HTTP.get_response(parsed_url)
pokemon_array = JSON.parse(response.body)["results"]

pokemon_array.each do |pokemon|
    url = pokemon["url"]
    name = pokemon["name"]

    parsed_pokemon_url= URI.parse(url)
    url_response = Net::HTTP.get_response(parsed_pokemon_url)
    
    binding.pry

end


binding.pry

