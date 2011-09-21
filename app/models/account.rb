class Account
  include Mongoid::Document
  
  field :card_number, :type => Integer
  field :type, :type => Symbol
  
  has_many :transactions
  
  def link
    txn_link = "/accounts/#{self.id}/transactions"
    rel = "/relations/transaction"
    Link.new(txn_link, rel)
  end 
  
end
