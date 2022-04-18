class Admin::AdminController < ApplicationController

    before_action :authenticate_user!
    before_action :check_admin
    
    layout "admin"
    
    protected
    
    def check_admin
        redirect_to root_path, alert: "У вас немає прав до цієї сторінки" unless current_user.admin?
    end

end

