class Group < ActiveRecord::Base
  validates :group_name, presence: true

  belongs_to :user, :required => true
  has_many :group_members, dependent: :destroy

end
