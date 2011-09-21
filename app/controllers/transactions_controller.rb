class TransactionsController < ApplicationController

  respond_to :json

  # HTTP Method: POST /accounts/{id}/transactions
  def create
     Rails.logger.info(">>>Transactions Controller>>INDEX: #{params.inspect}")
     render :json => {'status' => 200}
    #head :created, :location => transactions_path
  end
  
end
