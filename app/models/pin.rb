class Pin < ActiveRecord::Base
  attr_accessible :contact_email, :contact_phone, :product_description, :product_name, :product_price

  validates :product_name, presence: true
	validates :product_description, presence: true
  validates :product_price, presence: true
  validates :contact_phone, presence: true
  validates :contact_email, presence: true
end
