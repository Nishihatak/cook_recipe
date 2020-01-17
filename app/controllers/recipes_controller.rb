class RecipesController < ApplicationController

  def new
    @dish = Dish.new
    @recipe = Recipe.new
    @image = Image.new
  end

  def create
    @dish = Dish.create(params_dish)
    binding.pry
    if @dish.save && params[:recipes][:recipe].present?
      params[:recipes][:recipe].each do |recipe|
        @recipe = Recipe.create(recipe: recipe, dish_id: @dish.id)
        if @dish.save && @recipe.save && params[:images].present?
          params[:images][:image].each do |image|
            @image = Image.create(image: image, recipe_id: @recipe.id)
          end
        end
      end
    end
  end

  def show
    @dish = Dish.find(params[:id])
    @recipes = @dish.recipes
    @images = Image.where(recipe_id:@recipes.ids)
    binding.pry
  end

  private
  def params_dish
    params.require(:dish).permit(
      :title,
      :info,
      :image
      ).merge(user_id: current_user.id,)
  end

  def params_recipe
    params.require(:recipes).recuire(:recipe)
  end
end
