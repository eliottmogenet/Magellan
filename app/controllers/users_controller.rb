class UsersController < ApplicationController

  def index
    @users = User.all
    @reqs = Req.all
    @req = Req.find(params[:req_id])
    #@users_matched = @req.users
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
    @match = @user.matchings.where(req_id: @req.id)
  end

  def messaged
    @user = User.find(params[:id])
    @req = Req.find(params[:req_id])
    @match = @user.matchings.where(req_id: @req.id)
    @match.update(status: "messaged")
      redirect_to req_users_path(@req)
  end

  def archive
    @user = User.find(params[:id])
    @req = Req.find(params[:req_id])
    @match = @user.matchings.where(req_id: @req.id)
    @match.update(status: "archived")
      redirect_to req_users_path(@req)
  end
end
