class GroupMember < ActiveRecord::Base
  validates :diner_name, presence: true

  belongs_to :group, :required => true
  has_many :orders, dependent: :destroy

end
