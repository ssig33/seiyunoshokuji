class Meal < ActiveRecord::Base
  belongs_to :seiyu
  has_many :menus
  def self.build param
    menu = param[:menu]
    seiyu = Seiyu.build param[:seiyu]
    param.delete :menu
    param.delete :seiyu
    meal =  Meal.create param.merge(seiyu_id: seiyu.id)
    menu.each{|x| meal.menus.create x}
    meal
  end

  def update params
    self.at = params[:at]
    self.url = params[:url]
    self.description = params[:description]
    self.save
    self.menus.delete_all
    params[:menu].each{|x| self.menus.create x}
    self
  end
end
