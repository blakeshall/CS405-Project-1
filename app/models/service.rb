class Service < ActiveRecord::Base
  validates :name, :presence => true
  validates :amount, :presence => true
  has_many :payments

  def service_total
    @payments = Payment.where("service_id = ?", id)
    @total = 0.0
    @payments.each do |p|
      @total += p.amount
    end
    return @total
  end

  def month_payment(month)
    # payments where created at.month == month?
    @payments = Payment.all
    @month_total = 0.0
    @payments.each do |p|
      if p.created_at.month == month
        @month_total+= p.amount
      end
    end
    return @month_total
  end

  def year_total(year)
    @payments = Payment.all
    @total = 0.0
    @payments.each do |p|
      if p.created_at.year == year
        @total += p.amount
      end
    end
    return @total
  end
end
