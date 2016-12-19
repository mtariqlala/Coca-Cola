class Outlet < ActiveRecord::Base
  has_many:gets
  has_many:deliveries, through:  :gets 
  belongs_to :manager


validates :outlet_Name,presence: true,length: { maximum: 250 }
validates :location, presence: true, length: { maximum: 255 }
validates :manager_id, presence: true, uniqueness: true


end
