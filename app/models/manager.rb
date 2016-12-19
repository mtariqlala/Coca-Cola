class Manager < ActiveRecord::Base
has_one :outlet


validates :manager_name,presence: true,length: { maximum: 250 }
validates :contact_no, presence: true, length: { maximum: 15 },uniqueness: true
validates :salary, presence: true
validates :address, presence: true
end
