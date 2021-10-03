class ApplicationController < ActionController::Base
    before_action :authenticate_user!
    before_action :configure_permitted_parameters, if: :devise_controller?

    #include Pundit

  # Pundit: white-list approach.
  #after_action :verify_authorized, except: :index, unless: :skip_pundit?
  #after_action :verify_policy_scoped, only: :index, unless: :skip_pundit?

  # Uncomment when you *really understand* Pundit!
  # rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
  # def user_not_authorized
  #   flash[:alert] = "You are not authorized to perform this action."
  #   redirect_to(root_path)
  # end

  #private

  #def skip_pundit?
    #devise_controller? || params[:controller] =~ /(^(rails_)?admin)|(^pages$)/
  #end

  def after_sign_in_path_for(user)
    @req = current_user.customer.req_ids.first
    req_users_path(@req)
  end

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :job, :expected_wage, :city, :status, :linkedin_profile, :full_remote_only, :country_id, :area_median_wage, :university, :photo, :map, :next_jobs])
  end
end
