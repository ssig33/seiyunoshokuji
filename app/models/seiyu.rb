class Seiyu < ActiveRecord::Base
  def self.build param
    seiyu = self.find_or_create_by(name: param[:name])
    seiyu.update_attributes(param)
    seiyu
  end
end
