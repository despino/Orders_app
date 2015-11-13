class Group < ActiveRecord::Base
  validates :group_name, presence: true
  # validates :diner_name, presence: true
  # validates :group_member, presence: true



  belongs_to :user, :required => true
  has_many :group_members, dependent: :destroy

end
