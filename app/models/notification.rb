class Notification < ActiveRecord::Base
  has_many :devices
end
