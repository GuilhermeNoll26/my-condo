class CondoAccountsController < ApplicationController
  before_action :set_condo_account, only: [:show, :edit, :update, :destroy]

  # GET /condo_accounts
  # GET /condo_accounts.json
  def index
    @condo_accounts = CondoAccount.all
  end

  # GET /condo_accounts/1
  # GET /condo_accounts/1.json
  def show
  end

  # GET /condo_accounts/new
  def new
    @condo_account = CondoAccount.new
  end

  # GET /condo_accounts/1/edit
  def edit
  end

  # POST /condo_accounts
  # POST /condo_accounts.json
  def create
    @condo_account = CondoAccount.new(condo_account_params)

    respond_to do |format|
      if @condo_account.save
        format.html { redirect_to @condo_account, notice: 'Condo account was successfully created.' }
        format.json { render :show, status: :created, location: @condo_account }
      else
        format.html { render :new }
        format.json { render json: @condo_account.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /condo_accounts/1
  # PATCH/PUT /condo_accounts/1.json
  def update
    respond_to do |format|
      if @condo_account.update(condo_account_params)
        format.html { redirect_to @condo_account, notice: 'Condo account was successfully updated.' }
        format.json { render :show, status: :ok, location: @condo_account }
      else
        format.html { render :edit }
        format.json { render json: @condo_account.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /condo_accounts/1
  # DELETE /condo_accounts/1.json
  def destroy
    @condo_account.destroy
    respond_to do |format|
      format.html { redirect_to condo_accounts_url, notice: 'Condo account was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_condo_account
      @condo_account = CondoAccount.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def condo_account_params
      params.fetch(:condo_account, {})
    end
end
