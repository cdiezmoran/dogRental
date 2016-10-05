class DogsController < ApplicationController
  def index
    @dogs = Dog.all
  end

  def show
    dog_id = params[:id];
    @dog = Dog.find(dog_id);
  end

  def premier
    @dog = Dog.all.order("price DESC").first
  end
end
