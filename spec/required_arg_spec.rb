require 'spec_helper'

class Dog
  attr_reader :name

  def initialize(name: RequiredArg.new(:name))
    @name = name
  end
end

class Cat
  attr_reader :name

  def initialize(name: RequiredArg.new)
    @name = name
  end
end

describe RequiredArg do
  it 'has a version number' do
    expect(RequiredArg::VERSION).not_to be nil
  end

  it "stays out of the way when an argument is provided" do
    dog = Dog.new(name: "Milo")
    expect(dog.name).to eq "Milo"
  end

  it "raises ArgumentError when the required arg is omitted" do
    expect { Dog.new }.to raise_error(ArgumentError, "missing keyword: name")
  end

  it "has a shorter message if you don't tell it the name" do
    expect { Cat.new }.to raise_error(ArgumentError, "missing keyword")
  end
end
