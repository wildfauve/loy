class Account
  include Mongoid::Document
  
  field :card_number, :type => Integer
  field :type, :type => Symbol 
  
end
