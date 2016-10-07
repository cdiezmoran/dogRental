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

  def new
    @dog = Dog.new
  end

  def create
    dog_params = params.require(:dog).permit(:name, :breed, :park, :price)
    dog = Dog.create(dog_params)

    redirect_to dogs_path
  end
end
