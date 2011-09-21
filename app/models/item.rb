class Item
  include Mongoid::Document
  
  field :product_code, :type => String
  field :price, :type => :Float
  
  embedded_in :transaction
  
end
