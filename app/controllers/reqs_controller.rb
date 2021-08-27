class ReqsController < ApplicationController

  def index
    @reqs = Req.all
  end
end
