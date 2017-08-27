class HomeController < ApplicationController
  def index
    @dogs = Dog.all
    @puppies = Puppy.all
  end
end
