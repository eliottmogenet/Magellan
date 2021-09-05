class UsersController < ApplicationController

  def index
    @users = User.all
    @reqs = Req.all
    @req = Req.find(params[:req_id])
    @users_matched = @req.users
    @customer = current_user.customer
  end

  def show
    #@user = User.find(params[:req_id])
    @reqs = Req.all
    @users = User.all
    @req = Req.find(params[:req_id])
    @user = User.find(params[:id])
    #@reqs = Req.all
    @customer = current_user.customer
  end
end
