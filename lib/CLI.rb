class CLI
    def run
        puts "It's lights out and away we go! Welcome to the Formula 1 Race Weekend App"
        sleep(1)
        puts "Warming up the tyres...."
        Scraper.new.first_scape
        puts "Let's go racing!"
        puts "Which event would you like to see?"
        sleep(1)
        puts "1. FIA Formula 1 Qualifying"
        puts "2. FIA Formula 1 Grand Prix"
        puts " "
        puts "Please select option 1 or 2."

