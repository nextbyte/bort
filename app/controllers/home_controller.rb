class HomeController < ApplicationController
  before_filter :login_required
  
  def index
    if current_user.has_role?("admin") then
      redirect_to '/admin/home/index'
    end
  end
end
