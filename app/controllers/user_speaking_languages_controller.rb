class UserSpeakingLanguagesController < ApplicationController

   def new
    @user_speaking_language = UserSpeakingLanguage.new
  end

  def create
    @user_speaking_language = UserSpeakingLanguage.new(params_user_language)
    @user_speaking_language.save!
  end

  private
    def params_user_language
      params.require(:user_speaking_language).permit(:user_id, :speaking_language_id, :level, :country)
    end
end
