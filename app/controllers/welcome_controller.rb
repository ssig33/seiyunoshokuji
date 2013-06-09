class WelcomeController < ApplicationController
  def index
    @list = Meal.order('id desc')
    @page = params[:page]
  end
end
