class AccountsController < ApplicationController
  
  respond_to :json
  
  # HTTP method GET /accounts
  def index
    respond_with do |format|
      format.json {render :json => {:status => "200"}.to_json, :content_type => "application/vnd.loy+json" }
    end
  end
  
end
