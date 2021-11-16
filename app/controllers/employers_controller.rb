class EmployersController < ApplicationController


  def edit
    @employer = Employer.find(params[:id])
    #@req = Req.find(params[:req.id])
  #@match = Matching.find_by(req_id: @req, user_id: @user)
  end

 def update
    @employer = Employer.find(params[:id])
    @employer.update(params_employer)
    @employer.save
    #@req = Req.find(params[:req_id])
    #@match = Matching.find_by(req_id: @req, user_id: @user)
    #@match.status = "messaged"
    #@match.update(params_match)
    #@match.save!
     # redirect_to req_user_path(@req, @user)
  end

  def params_employer
    params.require(:employer).permit(:logo, :name, :description, :funding_stage, :industry, :team_size, :eng_team_size, :employer_backend_stack, :employer_frontend_stack, :tools_text, :architecture, :dev_ops)
  end
end
