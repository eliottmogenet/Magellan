class ReqsController < ApplicationController

  def index
    @reqs = Req.all
    @users = User.all
    #@req = Req.find(params[:id])
    @customer = current_user.customer
    @customer_reqs = @customer.reqs
    @chilean_users = @users.where(city: "Santiago 🇨🇱")
    #@candidates = @req.users.where(:matchings => {:status => nil })
  end

  def show
    @reqs = Req.all
    @req = Req.find(params[:id])
    @users_matched = @req.users
    @customer = current_user.customer
  end


  def new
    @req = Req.new
    @reqs = Req.all
    @customer = current_user.customer
  end

  def open
    @req = Req.new
  end

  def create
    @req = Req.new(params_req)
    @req.save!
  end

  def edit
    @user = User.find(params[:id])
    #@req = Req.find(params[:req.id])
  #@match = Matching.find_by(req_id: @req, user_id: @user)
  end


  def archive
    @user = User.find(params[:id])
    @req = Req.find(params[:req_id])
    @match = @user.matchings.where(req_id: @req.id)
    @match.update(status: "archived")
  end

private

    def params_req
      params.require(:req).permit(:customer_id, :title)
    end
end
