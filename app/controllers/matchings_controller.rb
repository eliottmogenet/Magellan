class MatchingsController < ApplicationController

  def new
    @matching = Matching.new
  end

  def create
    @matching = Matching.new(params_matching)
    @matching.save!
  end

  private
    def params_matching
      params.require(:matching).permit(:user_id, :req_id, :matching_description, :status, :timezone_overlap)
    end
end
