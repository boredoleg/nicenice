class Pin < ActiveRecord::Base
  attr_accessible :contact_email, :contact_phone, :product_description, :product_name, :product_price
end
