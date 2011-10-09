class ReportsController < ApplicationController

  def index
  end

  def month
    @payments = Payment.month_payments(params[:month].to_i)
  end
end
