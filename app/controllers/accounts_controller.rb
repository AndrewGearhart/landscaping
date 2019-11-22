class AccountsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def get
    @accounts = Account.all
    render json: @accounts
  end

  def get_one
    @account = Account.find_by(name: params[:name])
    return render json: @account if @account

    render json: { error: 'ACCOUNTNOTFOUND' }
  end

  def create_account
    #TODO Validations
    begin
      data = JSON.parse("#{request.body.read}")
      name = data['name']
      account = Account.create(name: name) if name
      return render json: account if account

      render json: { error: 'ACCOUNTNOTCREATED' }
    rescue JSON::ParserError => e
      render json: { error: e.to_s }
    end
  end
end
