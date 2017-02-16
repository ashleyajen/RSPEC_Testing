class Vehicle
end

class Car
  def initialize (model_year)
    @wheels = "4 wheels"
    @honk = "BEEP!"
    @model_year = model_year
    @lights = "off"
    @signal = "off"
    @speed = 0

  end

  def wheels
    @wheels
  end
  def honk
    @honk
  end

  def model_year
    @model_year
  end

  def lights
    @lights
  end

  def lightson
    if @lights == "off"
      @lights = "on"
    else
      @lights
    end
  end

  def lightscheck
    if @lights == "off"
      "lights are off"
    else
      "lights are on"
    end
  end

  def signal
    @signal
  end

  def signal_left
    if @signal == "off"
      @signal = "left"
    end
  end

  def signal_right
    if @signal == "off"
      @signal = "right"
    end
  end

  def signal_off
    if (@signal == "left") || (@signal == "right")
      @signal = "off"
    end
  end

  def speed
    @speed.to_s + " km/h"
  end

end#car

class Toyota < Car
  def initialize
    @whoops = "WHOOP"
  end

  def whoops
    @whoops
  end

  # def model_year
  #   super + "Toyota"
  # end
end

class Tata < Car
  def initialize(model_year)
    super
    @beeps = "BEEP"
  end

  def beeps
    @beeps
  end

  def accelerate
    @speed = (@speed + 2).to_s + " km/h TATA"
  end

  def brake
    @speed = (@speed - 2).to_s + " km/h TATA"
  end
  # def model_year
  #   super + "Tata"
  # end

end

class Tesla < Car
  def initialize(model_year)
    super
    @boop = "BOOP"
  end

  def boop
    @boop
  end

  def accelerate
    @speed = (@speed + 10).to_s + " km/h TESLA"
  end

  def brake
    @speed = (@speed - 7).to_s + " km/h TESLA"
  end
end#tesla

class Garage
  def initialize
  @garage = []
  end

  def retrieve
    @garage
  end

  def store(tesla_car)
    @garage << tesla_car
  end

  def sortgarage
    @garage.sort_by{|car| car.class.to_s}
  end

  ##doing the spaceship operator, incomplete
  def sort_by_model_then_year
    @garage.sort_by{
      |car1, car2| (car1.class.to_s, car1.model_year) <=> (car2.class.to_s, car2.model_year)
    }
  end
end#garage
