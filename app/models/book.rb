class Book < ActiveRecord::Base
  liquid_methods :name, :price, :author
end
