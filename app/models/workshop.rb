class Workshop < ActiveRecord::Base
  attr_accessible :form_page, :info_page, :title, :paypal_link

  validates :title, :presence => true
  validates :paypal_link, :uniqueness => true, :presence => true
end
