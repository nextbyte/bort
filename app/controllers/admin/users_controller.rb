class Admin::UsersController < Admin::HomeController
  active_scaffold :user do |config|
    config.columns= [:login,:email,:name, :roles,:created_at, :state, :activation_code]
#    config.update.columns= [:login,:email,:name, :roles,:created_at]
#    config.create.columns= [:login,:email,:name, :roles,:created_at]
  end
  
  def self_edit
    @user = User.find(session[:user_id])
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post }
    end
  end
end

