class Pin < ActiveRecord::Base
  attr_accessible :contact_email, :contact_phone, :product_description, :product_name, :product_price, :image

  validates :product_name, presence: true
	validates :product_description, presence: true
  validates :product_price, presence: true
  validates :contact_phone, presence: true
  validates :contact_email, presence: true
  
  has_attached_file :image, styles: { medium: "320x240>"}
  validates_attachment :image, presence: true,
                            content_type: { content_type: ['image/jpeg', 'image/jpg', 'image/png', 'image/gif'] },
                            size: { less_than: 5.megabytes }

  belongs_to :user
end
