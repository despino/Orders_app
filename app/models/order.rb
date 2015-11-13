class Order < ActiveRecord::Base
  validates :Restaurant, presence: true
  belongs_to :group_member, :required => true
  ratyrate_rateable 'Food', 'Restaurant'

  def rating_for
    @order = Order.find(params[:id])

    @order = group_member_id

  end

end
