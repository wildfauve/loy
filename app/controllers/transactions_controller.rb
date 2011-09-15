class TransactionsController < ApplicationController

  respond_with :json

  # HTTP Method: POST /accounts/{id}/transactions
  def create
    head :created, :location => transactions_path
  end
  
end
