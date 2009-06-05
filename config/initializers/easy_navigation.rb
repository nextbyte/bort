EasyNavigation::Builder.config do |map|
  map.navigation :admin do |navigation|
    navigation.tab :home, :url => { :controller => "/admin/home", :action => "index"} do |tab|
      tab.menu :index, :url => { :controller => "/admin/home", :action => "index" } do |menu|
        menu.connect :controller => "admin/home"
      end
    end
    navigation.tab :users, :url => { :controller => "/admin/users", :action => "index" } do |tab|
      tab.menu :users, :url => { :controller => "/admin/users", :action => "index" } do |menu|
        menu.connect :except => "new"
      end
      tab.menu :roles, :url => { :controller => "/admin/roles", :action => "index" } do |menu|
        menu.connect :controller => "admin/roles"
      end
      tab.menu :new_user, :url => { :controller => "/admin/users", :action => "new" } do |menu|
        menu.connect :only => "new"
      end
    end
  end
  map.navigation :default do |navigation|
    navigation.tab :home, :url => { :controller => "/home", :action => "index"} do |tab|
      tab.menu :index, :url => { :controller => "/home", :action => "index" } do |menu|
        menu.connect :controller => "home"
      end
    end
  end
end
