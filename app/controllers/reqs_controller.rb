class ReqsController < ApplicationController

  def index
    @reqs = Req.all
    @users = User.all
  end
end
