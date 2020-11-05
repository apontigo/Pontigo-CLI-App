require_relative 'environment.rb'

url = "https://www.imdb.com/list/ls091520106/"
html = open(url)
html_parsed_to_elements = Nokogiri::HTML(html)
review_elements = html_parsed_to_elements.css('.lister-item')



review_elements.each do |review_element|
    name = review_element.css("h3").text
    genre = review_element.css("span.genre").text
    score = review_element.css("span.metascore").text


    synopsis_url = review_element.css("a").attr("href").text
    synopsis_html = open("https://www.imdb.com/" + synopsis_url)
    synopsis_html_parsed_to_elements = Nokogiri::HTML(synopsis_html)
    synopsis = synopsis_html_parsed_to_elements.css(".summary_text").text
    #binding.pry

    


    Review.new(name, genre, score, synopsis)
    puts "=============================================="
    puts "Film Name: #{name}"
    puts "Film Genre: #{genre}"
    puts "Film Metascore: #{score}"
    puts "Film Synopsis: #{synopsis}"
    puts "=============================================="

end


#binding.pry