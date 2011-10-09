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

  def month_payments(month)
    @payments = Payment.where("service_id = ?", id)
    @month_payments = []
    @payments.each do |p|
      if p.created_at.month == month
        @month_payments.push(p)
      end
    end
    return @month_payments

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

  def total_debt
    @debt = 0.0
    if reoccuring == true
      @x = created_at.beginning_of_month
      @ct = 0
      while !@x.future?
        @ct += 1
        @x = @x + 1.month
      end
      @debt = (@ct * amount) + @debt
    else
      @debt = amount
    end
    return @debt
  end

  def owed
    if total_debt - service_total > 0.0
      return total_debt - service_total
    else
      return 0.0
    end
  end

  def self.unpaid_services
    @services = Service.where("active = ?", true)
    @unpaid = []
    @services.each do |s|
      if s.owed != 0.0
        @unpaid.push(s)
      end
    end
    return @unpaid
  end

end
