class Vehicle
  attr_accessor :lights, :wheels, :year, :signal, :accelerate, :brake
  def initialize(lights=false, wheels=4,signal="off", speed=0.0)
    @lights = lights
    @wheels = wheels
    @year = []
    @signal = signal
    @speed = speed
  end

  def toggle_lights
    if @lights == false
      @lights = true
    else
      @lights = false
    end
  end
  def turn_signals
    puts "Which way to turn? (Left, Right, or Off)"
    get_signal = gets.chomp.downcase
    if get_signal == "right"
      @signal = "right"
    elsif get_signal == "left"
      @signal = "left"
    elsif get_signal == "off"
      @signal = "off"
    else
      puts "You suck try again."
    end
  end

  def wheels_change(wheels)
    @wheels = wheels
  end

end

class Car < Vehicle
  def initialize
    super()
  end
end
my_car = Car.new

class Tesla < Car
  def initialize
    super()
  end
  def accelerate
    @speed += 10
  end
  def brake
    @speed -= 7
  end
  def get_years
    puts "pick a year for the Tesla"
    year = gets.chomp
    p @year.push(year)
    puts "pick another year for the Tesla"
    year = gets.chomp
    p @year.push(year)

  end
end
my_tesla = Tesla.new
my_tesla.toggle_lights
my_tesla.wheels_change(3)
my_tesla.turn_signals
my_tesla.accelerate
my_tesla.brake
my_tesla.get_years
my_tesla

garage = []
garage << my_tesla#.get_years




class Tata < Car
  def initialize
    super()
  end
  def accelerate
    @speed += 2
  end
  def brake
    @speed -= 1.25
  end
  def get_years
    puts "pick a year for the Tata"
    year = gets.chomp
    p @year.push(year)
    puts "pick another year for the Tata"
    year = gets.chomp
    p @year.push(year)
  end
end
my_tata = Tata.new
my_tata.accelerate
my_tata.brake
my_tata.get_years
my_tata

garage << my_tata#.get_years

class Toyota < Car
  def initialize
    super()
  end
  def accelerate
    @speed += 7
  end
  def brake
    @speed -= 5
  end
  def get_years
    puts "pick a year for the Toyota"
    year = gets.chomp
    p @year.push(year)
    puts "pick another year for the Toyota"
    year = gets.chomp
    p @year.push(year)
  end
end

my_toyota = Toyota.new
my_toyota.accelerate
my_toyota.brake
my_toyota.get_years
my_toyota

#Sorting method -- doesn't work 
garage << my_toyota#.get_years

p garage.sort_by{|o| o.year[0]}
