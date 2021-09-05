class ReqsController < ApplicationController

  def index
    @reqs = policy_scope(Req)
    @users = User.all
    @req = Req.find(params[:id])
    @users_matched = @req.users
    @customer = current_user.customer
  end

  def show
    @reqs = Req.all
    @req = Req.find(params[:id])
    @users_matched = @req.users
    @customer = current_user.customer
  end
end
