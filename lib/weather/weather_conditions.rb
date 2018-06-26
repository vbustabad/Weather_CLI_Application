require 'pry'

class Weather::WeatherConditions
  attr_accessor :city, :fahrenheit_temperature, :feels_like_temperature, :celsius_temperature, :current_time, :wind, :visibility, :pressure, :humidity, :dew_point

  @@all = []
  # create an @@all class variable and class getter method for it
  # every instacne of WeatherConditions class shouldl be saved to @@@all upon instantiation
  # add a class finder mehod self.find_all_by_city(city) that returns a collection of all WeatherConditinos objects for a particular city

    def initialize(city, url)
      @city = city
      @url = url
      @@all << self
    end

    def self.all
      @@all
    end

    def fahrenheit_temperature
    	doc.css("div.h2").first.children.last.to_s
    end

    def feels_like_temperature
    	doc.css("p")[1].children[0].to_s.gsub("Feels Like: ", "")
    end

    def celsius_temperature
      (fahrenheit_temperature.gsub("°F", "").to_i - 32) * 5/9
    end

    def wind
      doc.css("p")[1].children[4].to_s.gsub("Wind: ", "").gsub("mph ", "mph")
    end

    def current_time
      doc.css("#wtct").children.to_s
    end

    def visibility
      doc.css("p")[5].children[1].to_s.gsub(" ", "")
    end

    def pressure
    	doc.css("p")[6].children[1].to_s.gsub(" ", "").gsub("\"", " ")
    end

    def humidity
     	doc.css("p")[7].children[1].to_s.gsub(" ", "")
    end

    def dew_point
    	doc.css("p")[8].children[1].to_s.gsub(" ", "")
    end

    def doc
      @doc ||= scrape
    end

    def scrape
      puts "¨SCRAPING ************** #{@url}"
      Nokogiri::HTML(open("https://www.timeanddate.com#{@url}"))
    end

    def self.find_all_by_city(city)
      self.all.select do |city_instance|
        if city_instance.city == city
          city_instance
        else
          false
        end
      end
    end

    def self.find_by_selection(input)
      self.all(input - 1)
    end
end
