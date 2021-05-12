class FoodsController < ApplicationController
  def index
    @foods = Food.order(created_at: :desc)
  end

  def new
    @food = Food.new
  end

  def create
    @food = current_user.foods.create!(food_params)
  end

  def show
    @food
  end

  def edit
    @food
  end

  def update
    @food
  end

  def destroy
    @food
  end

  private

  def food_params
    params.require(:food).permit(:name, :comment)
  end
end
