class PaymentsController < ApplicationController

  def create
    @service =Service.find(params[:service_id])
    @payment = @service.payments.create(params[:payment])
    redirect_to service_path(@service)

  end

  def index
    @service = Service.find(params[:service_id])
    @payments = @service.payments
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @service }
    end
  end

  
end
