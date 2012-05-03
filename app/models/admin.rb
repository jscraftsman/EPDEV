class Admin < ActiveRecord::Base
  attr_accessible :password, :username
end
