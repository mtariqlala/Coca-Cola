class Get < ActiveRecord::Base
  belongs_to :outlet
  belongs_to :delivery
end
