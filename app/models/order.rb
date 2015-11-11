class Order < ActiveRecord::Base
  belongs_to :group_member 
end
