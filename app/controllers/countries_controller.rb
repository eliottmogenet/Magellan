class CountriesController < ApplicationController

    def new
    @country = Country.new
  end

  def create
    @country = Country.new(params_matching)
    @country.save!
  end

  private
    def params_matching
      params.require(:country).permit(:name, :notice_period, :other_benefits, :healthcare)
    end
end
