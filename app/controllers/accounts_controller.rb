class AccountsController < ApplicationController
  
  respond_to :html, :loy_json
  
  # HTTP method GET /accounts
  def index
    Rails.logger.info(">>>Accounts Controller>>INDEX: #{params.inspect}")
    @accounts = Account.where(card_number: params[:card_id]) if params[:card_id]
    respond_with do |format|
      format.html
      format.loy_json {render :jsonify => @accounts }
    end
  end
  
    # GET /account/new
    # path: new_account_path
    def new
      @account = Account.new
    end

    # POST /account
    def create
      @account = Accounts.new(params[:Accounts])
      @account.add_external_refs(params)
      if @account.save
        flash[:notice] = "Successfully created Accounts."
        redirect_to @account
      else
        render :action => 'new'
      end
    end

    # GET /Accountss/{id}
    def show
      #@account = Accounts.find(params[:id])
    end

    # GET /Accounts/edit
    def edit
      #@account = Accounts.find(params[:id])
    end

    # PUT /Accounts/{id}
    def update
      @account = Accounts.find(params[:id])
      respond_with do |format|
        if @account.update_attributes(params[:Accounts])
          flash[:notice] = "Successfully updated Accounts."
          format.html {redirect_to @account}
        else
          format.html { render :action => 'edit' }
        end
      end  
    end

    def destroy
       #
       # DELETE Accounts
       #
       #@account = Accounts.find(params[:id])
       # remove references in other models
       respond_with do |format|
        if @account.destroy
           flash[:notice] = "Successfully destroyed Accounts."
           format.html {redirect_to Accounts_url}
           format.js {render :nothing => true}
        else
          flash[:notice] = "Couldn't remove Accounts"
          render :action => 'show'
        end
      end
    end
  
end
