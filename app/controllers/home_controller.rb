class HomeController < ApplicationController

  def index
    @dish = Dish.find(1)
  end
end
