class UserStacksController < ApplicationController

  def new
    @user_stack = UserStack.new
  end

  def create
    @user_stack = UserStack.new(params_user_stack)
    @user_stack.save!
  end

  private
    def params_user_stack
      params.require(:user_stack).permit(:user_id, :stack_id, :able_to_learn)
    end
end
