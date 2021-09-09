class ReqsController < ApplicationController

  def index
    @reqs = policy_scope(Req)
    @users = User.all
    @req = Req.find(params[:id])
    @customer = current_user.customer
    #@candidates = @req.users.where(:matchings => {:status => nil })
  end

  def show
    @reqs = Req.all
    @req = Req.find(params[:id])
    @users_matched = @req.users
    @customer = current_user.customer
  end
end
