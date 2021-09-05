class UsersController < ApplicationController

  def index
    @users_matched = @req.users
  end

  def show
    @user = User.find(params[:req_id])
    @reqs = Req.all



    @users = User.all
    @req = Req.find(params[:id])
    #@user = User.find(params[:req_id])
    #@reqs = Req.all
  end

end
