class GroupMember < ActiveRecord::Base
  validates :diner_name, presence: true
  belongs_to :group

end
