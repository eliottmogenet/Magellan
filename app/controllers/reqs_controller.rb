class ReqsController < ApplicationController

  def index
    @reqs = Req.all
    @users = User.all
    @req = Req.find(params[:id])
    @users_matched = @req.users
  end

  def show
    @reqs = Req.all
    @req = Req.find(params[:id])
    @users_matched = @req.users
  end
end
