class Drive < ActiveRecord::Base
  belongs_to :lorry
  belongs_to :driver
end
