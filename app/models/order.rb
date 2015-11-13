class Order < ActiveRecord::Base
  validates :Restaurant, presence: true
  
  belongs_to :group_member, :required => true
  ratyrate_rateable 'Menu_Item'

  def rating_for
    @order = Order.find(params[:id])
  end

end
