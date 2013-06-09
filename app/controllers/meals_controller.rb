class MealsController < ApplicationController
  def create
    raise unless login?
    meal = Meal.build meal_params
    redirect_to meal_path(meal)
  end

  def show
    @m = Meal.find params[:id]
  end

  def meal_params
    params.permit({
      meal: [
        {seiyu: [:name, :url]},
        :at, :url, :description, 
        {menu: [[:title, :cal, :description]]}
      ]
    })[:meal]
  end
end
