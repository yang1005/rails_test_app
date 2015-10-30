class User < ActiveRecord::Base
  # include Liquidable
  liquid_methods :name, :email, :login, :dear_name
  has_many :addresses

  accepts_nested_attributes_for :addresses

  def dear_name
    "#{name} 様"
  end

end
