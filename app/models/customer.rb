class Customer < ActiveRecord::Base
  paginates_per 10

  has_many :ivrs,
           :foreign_key => :customer_id,
           :dependent => :delete_all

#  has_many :extensions,
#           :foreign_key => :customer_id,
#           :dependent => :delete_all
end
