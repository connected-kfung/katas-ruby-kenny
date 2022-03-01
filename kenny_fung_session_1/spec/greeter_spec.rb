require './app/greeter'
require 'time'

RSpec.describe 'Greeter' do
  describe '#greet' do
    it "receives a name as input and outputs Hello <name>" do
      greeter = Greeter.new

      greeting = greeter.greet('Kenny')

      expect(greeting).to eq 'Hello Kenny'
    end

    it "greet trims the input" do
      greeter = Greeter.new

      greeting = greeter.greet(' Kenny  ')

      expect(greeting).to eq 'Hello Kenny'
    end

    it "greet capitalizes the first letter of the name" do
      greeter = Greeter.new

      greeting = greeter.greet('kenny')

      expect(greeting).to eq 'Hello Kenny'
    end

    it "greet returns Good morning <name> when the time is 06:00-12:00" do
        test_time = Time.parse('8am')
        greeter = Greeter.new(test_time)

        greeting = greeter.greet('Kenny')
  
        expect(greeting).to eq 'Good morning Kenny'
    end

    it "greet returns Good evening <name> when the time is 18:00-22:00" do
      test_time = Time.parse('7pm')
      greeter = Greeter.new(test_time)

      greeting = greeter.greet('Kenny')

      expect(greeting).to eq 'Good evening Kenny'
    end

    it "greet returns Good night <name> when the time is 22:00-06:00" do
        test_time = Time.parse('1am')
        greeter = Greeter.new(test_time)

        greeting = greeter.greet('Kenny')

        expect(greeting).to eq 'Good night Kenny'
    end
end
end
