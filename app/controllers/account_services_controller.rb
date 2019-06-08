class AccountServicesController < ApplicationController
  before_action :set_account_service, only: [:show, :edit, :update, :destroy]

  # GET /account_services
  # GET /account_services.json
  def index
    @account_services = AccountService.all
  end

  # GET /account_services/1
  # GET /account_services/1.json
  def show
  end

  # GET /account_services/new
  def new
    @account_service = AccountService.new
  end

  # GET /account_services/1/edit
  def edit
  end

  # POST /account_services
  # POST /account_services.json
  def create
    @account_service = AccountService.new(account_service_params)

    respond_to do |format|
      if @account_service.save
        format.html { redirect_to @account_service, notice: 'Account service was successfully created.' }
        format.json { render :show, status: :created, location: @account_service }
      else
        format.html { render :new }
        format.json { render json: @account_service.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /account_services/1
  # PATCH/PUT /account_services/1.json
  def update
    respond_to do |format|
      if @account_service.update(account_service_params)
        format.html { redirect_to @account_service, notice: 'Account service was successfully updated.' }
        format.json { render :show, status: :ok, location: @account_service }
      else
        format.html { render :edit }
        format.json { render json: @account_service.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /account_services/1
  # DELETE /account_services/1.json
  def destroy
    @account_service.destroy
    respond_to do |format|
      format.html { redirect_to account_services_url, notice: 'Account service was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_account_service
      @account_service = AccountService.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def account_service_params
      params.require(:account_service).permit(:collect_type, :pay_date, :value, :comments)
    end
end
