class Scraper
    def initialize
        @base_url = "https://www.motorsport.com"
    end

    def first_scrape
        html = open(@base_url + "/f1/schedule/")
        html_parsed_to_elements = Nokogiri::HTML(html)
        review_elements = html_parsed_to_elements.css('.review')

        review_elements.each do |review_element|