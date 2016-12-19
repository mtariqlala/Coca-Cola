class Lorry < ActiveRecord::Base
has_many:makes

has_many:drives

has_many:deliveries, through: :makes

has_many:drivers, through: :drives

validates :Lorry_no, presence: true, length: { maximum: 15 },uniqueness: true
validates :made_in, presence: true, length:{maximum: 50 }
validates :date_of_manufacturer, presence: true
end
