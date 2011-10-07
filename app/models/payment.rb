class Payment < ActiveRecord::Base
  belongs_to :service

  def self.month_payment(month)
    # payments where created at.month == month?
    # Payment.where(:created_at => (Time.now.beginning_of_month)..Time.now).order("created_at ASC")
    @payments = Payment.all
    @month_payments = []
    @payments.each do |p|
      if p.created_at.month == month
        @month_payments.push(p)
      end
    end
    return @month_payments
  end

  def self.all_year_to_date
    @payments = Payment.where(:created_at => (Time.now.beginning_of_year)..Time.now).order("created_at ASC")
  end

  def self.all_year_total
    @payments = all_year_to_date
    @total = 0.0
    @payments.each do |p|
       @total += p.amount
    end
    return @total
  end
end
