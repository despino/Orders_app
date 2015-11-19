class GroupMembersController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_group_member, only: [:show, :edit, :update, :destroy]

  # GET /group_members
  # GET /group_members.json
  def index
    @group_members = GroupMember.all
  end

  # GET /group_members/1
  # GET /group_members/1.json
  def show
  end

  # GET /group_members/new
  def new
    @group_member = GroupMember.new
  end

  # GET /group_members/1/edit
  def edit
  end

  # POST /group_members
  # POST /group_members.json
  def create
    @group_member = GroupMember.new(group_member_params)
    # @group_member.group_id = groups.id
    respond_to do |format|
      if @group_member.save
        format.html { redirect_to @group_member.group, notice: 'Group member was successfully created.' }
        format.json { render :show, status: :created, location: @group_member }
      else
        format.html { render :new }
        format.json { render json: @group_member.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /group_members/1
  # PATCH/PUT /group_members/1.json
  def update
    respond_to do |format|
      if @group_member.update(group_member_params)
        format.html { redirect_to @group_member, notice: 'Group member was successfully updated.' }
        format.json { render :show, status: :ok, location: @group_member }
      else
        format.html { render :edit }
        format.json { render json: @group_member.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /group_members/1
  # DELETE /group_members/1.json
  def destroy
    @group_member.destroy
    respond_to do |format|
      format.html { redirect_to group_members_url, notice: 'Group member was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  # @group_member = GroupMember.new(params[:group_member])
  # @group = Group.find(params[:group_id])
  # @group.group_members << @group_member
  def new_order
    @group_member = GroupMember.find(params[:group_members_id])
    @order = Order.new
    render 'new_order.html.erb'
  end

  def create_order
    @order = Order.new(order_params)
    @group_member = GroupMember.find(params[:group_members_id])
    @group_member.orders << @order

    respond_to do |format|
      if @order.save
          format.html { redirect_to group_path(@group_member.group), notice: 'Order was successfully updated.' }
      else
         format.html { render 'new_order.html.erb' }
      end
    end
  end

  def orders
    @group_member = GroupMember.find(params[:group_members_id])
    @orders = @group_member.orders
    render 'orders/index.html.erb'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_group_member
      @group_member = GroupMember.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def group_member_params
      #params.require(:group_member).permit(:group_members_id, :order)
    end

    def order_params
      params.require(:order).permit(:Restaurant, :Menu_Item, :Alterations, :Diner)
    end

end
