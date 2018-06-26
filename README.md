# Weather

Weather is a Command Line Interface (CLI) application that scrapes data from TimeandDate.com in order to provide the current weather conditions for a city that is chosen by the user. The user is presented with a list of approximately 140 major cities from around the world that is listed on the Weather section for the TimeandDate.com website. The user will make a selection for the city that they would like to view the weather for. The application will then supply the detailed weather information for the particular city, including the fahrenheit, feels like and celsius temperature, current time, wind, visibility, pressure, humidity and dew point. Lastly, the user will have the option to view the weather conditions for other cities or exit the program.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'weather'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install weather

## Usage

Start the application by entering "weather/bin/weather". Follow the instructions that are provided in order to make a selection and view the weather conditions for a particular city. Enter 'list' in order to view the selection of major cities around the world. Choose a city by entering the number that corresponds to the particular city. Enter 'yes' if you would like to view the weather conditions for another city. Enter 'no' if you would like to exit the program.

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/'vbustabad'/weather.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
