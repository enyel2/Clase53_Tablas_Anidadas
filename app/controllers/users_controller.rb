class UsersController < ApplicationController
	before_action :set_user, only: [:index, :create, :edit, :update]
  
  def index

  	#@users = User.all
  	@users = @group.users.all

  end

  def create
  	@group.users.build(user_params)
  	@group.save
  	redirect_to group_users_path(@group)
  	
  end

  def edit
  	
  end

  def update
  	
  end

  private

  def set_user
  	@group = Group.find(params[:group_id])
  end

  def user_params
  	params.require(:user).permit(:name)
  	
  end

end

