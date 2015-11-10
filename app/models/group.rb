class Group < ActiveRecord::Base
  validates :group_name, presence: true
  belongs_to :user

end
