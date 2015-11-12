class Order < ActiveRecord::Base
  validates :Restaurant, presence: true
  belongs_to :group_member, :required => true
end
