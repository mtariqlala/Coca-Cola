class Make < ActiveRecord::Base
  belongs_to :delivery
  belongs_to :lorry
end
