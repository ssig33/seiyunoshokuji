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
end
