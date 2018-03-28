class HomeController < ApplicationController
  def index
    @dogs = Dog.all
    @puppies = Puppy.order("id DESC")
  end
end
