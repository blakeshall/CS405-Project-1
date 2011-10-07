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

  def year_to_date
    @payments = Payment.where(:created_at => (Time.now.beginning_of_year)..Time.now, :service_id => id).order("created_at ASC")
  end

  def current_year_total
     @payments = year_to_date
     @total = 0.0
     @payments.each do |p|
       @total += p.amount
     end
     return @total
  end

end
