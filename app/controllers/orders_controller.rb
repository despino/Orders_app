class OrdersController < ApplicationController

  before_filter :authenticate_user!
  before_action :set_order, only: [:show, :edit, :update, :destroy]
  # GET /orders
  # GET /orders.json
  def index
    if @orders.nil?
      @orders = Order.all
    end

  end

  # GET /orders/1
  # GET /orders/1.json
  def show
    # @user = User.find(params[:id])
    # @group = @user.group(params[:id])
    # @group = Group.find(params[:group_id])
    # @group_member = @group.group_members.build(params[:group_member])
    # @group_member = GroupMember.find(params[:group_members_id])
    # @orders = @group_member.orders
  end

  # GET /orders/new
  def new
    render '/views/group_members/new_order.html.erb'
  end

  # GET /orders/1/edit
  def edit
    render '/views/orders/edit.html.erb'
  end

  # POST /orders
  # POST /orders.json
  def create
    # @order = Order.new(order_params)
    # @group_member = GroupMember.find(params[:group_member_id])
    # @order.group_member_id << @group_member
    # # @order = Order.new(params[:order])
    # # @group_member = GroupMember.find(params[:id])
    # # @order.group_member_id << @group_member
    # respond_to do |format|
    #   if @order.save
    #     format.html { redirect_to @order, notice: 'Order was successfully created.' }
    #     format.json { render :show, status: :created, location: @order }
    #   else
    #     format.html { render :new }
    #     format.json { render json: @order.errors, status: :unprocessable_entity }
    #   end
    # end
    render '/views/group_members/new_order.html.erb'
  end

  # PATCH/PUT /orders/1
  # PATCH/PUT /orders/1.json
  def update
    respond_to do |format|
      if @order.update(order_params)
        format.html { redirect_to @order, notice: 'Order was successfully updated.' }
        format.json { render :show, status: :ok, location: @order }
      else
        format.html { render :edit }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orders/1
  # DELETE /orders/1.json
  def destroy
    @group = @order.group_member.group
    @order.destroy
    respond_to do |format|
      format.html { redirect_to @group, notice: 'Order was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_params
      params.require(:order).permit(:Restaurant, :Menu_Item, :Alterations, :Diner)
    end
end
