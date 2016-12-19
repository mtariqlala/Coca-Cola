class Driver < ActiveRecord::Base
has_many:drives
has_many:lorries, through: :drives

validates :driver_name,presence: true,length: { maximum: 250 }
validates :contact_no, presence: true, length: { maximum: 15 },uniqueness: true
validates :salary, presence: true
validates :address, presence: true
end
