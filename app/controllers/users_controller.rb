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
    @match = Matching.find_by(req_id: @req, user_id: @user)
    @known_stacks = @user.user_stacks
    @country = @user.country
    #@country = Country.find_by(@user.country_id)
    #@experience1 = PreviousExperience.where(user_id: @user).first
  end

  #def edit
  # @match = Matching.find_by(req_id: @req, user_id: @user)
  #end

 def update
    @user = User.find(params[:id])
    @req = Req.find(params[:req_id])
    @match = Matching.find_by(req_id: @req, user_id: @user)
    @match.status = "messaged"
    @match.update(params_match)
    @match.save!
      redirect_to req_user_path(@req, @user)
  end


 #def message
    #@user = User.find(params[:id])
    #@req = Req.find(params[:req_id])
    #@match = Matching.find_by(req_id: @req, user_id: @user)
    #@match.status = "messaged"
    #@match.save!
      #redirect_to req_user_path(@req, @user)
  #end

  def archived
    @user = User.find(params[:id])
    @req = Req.find(params[:req_id])
    @match = Matching.find_by(req_id: @req, user_id: @user)
    @match.update(status: "archived")
      redirect_to req_user_path(@req, @user)
  end
end

#private

def params_match
  params.require(:matching).permit(:matching, :message_content, :status, :rate, :comment, :req_id, :user_id)
end
