class Delivery < ActiveRecord::Base
has_many:gets
has_many:outlets, through: :gets
has_many:makes
has_many:lorries, through: :makes

validates :delivery_date,presence: true

validates :distance_covered, presence: true



end
