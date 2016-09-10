class StaticController < ApplicationController

  def home
    redirect_to :dashboard if user_signed_in?

  end

  def dashboard
  end

end
