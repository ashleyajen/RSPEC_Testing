require 'rspec'
require_relative 'carclass'

describe 'carclass' do
  it "has to be able to create vehicle object" do
    expect {Vehicle.new}.to_not raise_error
  end

  ##all car stuff below:
  it "has to be able to create a car object" do
    car = Car.new("1997")
    expect {Car.new("1997")}.to_not raise_error
  end
  it "has to assign a model year to each car" do
    car = Car.new("1997")
    expect(car.model_year).to eq("1997")
  end

  it "has to make a car object have four wheels" do
    car = Car.new("1997")
    expect(car.wheels).to eq("4 wheels")
  end
  it "has to make the car object honk" do
    car = Car.new("1997")
    expect(car.honk).to eq("BEEP!")
  end

  it "has to create a car object with the ability to turn lights on/off" do
    car = Car.new("1997")
    expect(car.lights).to eq("off")
    expect(car.lightson).to eq("on")
    expect(car.lightscheck).to eq("lights are on")
  end

  it "has to create a car object with the ability to signal left and right" do
    car = Car.new("1997")
    expect(car.signal).to eq("off")
    expect(car.signal_left).to eq("left")
    expect(car.signal_off).to eq("off")
    expect(car.signal_right).to eq("right")
  end


  it "has to start at a speed of 0km/h" do
    car = Car.new("1997")
    expect(car.speed).to eq("0 km/h")
  end

  it "has to create a Toyota object of car class" do
    toyota = Toyota.new
    expect{Toyota.new}.to_not raise_error
  end

  it "has to create a Toyota object that whoops" do
    toyota = Toyota.new
    expect(toyota.whoops).to eq("WHOOP")
  end

  it "has to create a Tata object of car class" do
    tata = Tata.new("1997")
    expect{Tata.new("1997")}.to_not raise_error
  end

  it "has to create a Tata object that beeps" do
    tata= Tata.new("1997")
    expect(tata.beeps).to eq("BEEP")
  end

  it "has to accelerate the speed by 2km/h" do
    tata = Tata.new("1997")
    expect(tata.accelerate).to eq("2 km/h TATA")
  end

  it "has to brake the speed by 2km/h" do
    tata = Tata.new("1997")
    expect(tata.brake).to eq("-2 km/h TATA")
  end

  it "has to create a Tesla object of car class" do
    tesla = Tesla.new("1997")
    expect{Tesla.new("1997")}.to_not raise_error
  end

  it "has to accelerate the speed by 10km/h" do
    tesla = Tesla.new("1997")
    expect(tesla.accelerate).to eq("10 km/h TESLA")
  end

  it "has to brake the speed by 7km/h" do
    tesla = Tesla.new("1997")
    expect(tesla.brake).to eq("-7 km/h TESLA")
  end

  it "has to create a Tesla object that boops" do
    tesla= Tesla.new("1997")
    expect(tesla.boop).to eq("BOOP")
  end

it "has to create a blank array called garage" do
  expect(Garage.new.retrieve).to eq([])
end

it "has to move cars into the garage array" do
  # make a garage, asssign it to a variable
  # make a car, assign it to a variable
  # call store(car) on garage object, pass car object to it as argument
  # expect(garage_object.retrieve).to include(car_object)
  garage = Garage.new
  tesla_car = Tesla.new("1997")
  expect(garage.store(tesla_car)).to include(tesla_car)
end




end# carclass
