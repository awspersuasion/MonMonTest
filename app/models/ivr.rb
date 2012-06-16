class Ivr < ActiveRecord::Base
  def Ivr.create_menu(customer_id)
    for i in 1..9
      ivr = Ivr.new
      ivr.customer_id = customer_id
      ivr.level = i
      ivr.save
    end
  end
end
