class ActualRolesController < ApplicationController
    before_action :logged_in_user, only: [:create, :destroy]
    before_action :correct_user,   only: :destroy

    def create
        @actual_role = current_user.actual_roles.build(actual_role_params)
        if @actual_role.save
            flash[:success] = "Role created!"
            redirect_to root_url
        else
            @feed_items = []
            render 'static_pages/home'
        end
    end
  
    def destroy
        @actual_role.destroy
        flash[:success] = "Role deleted"
        redirect_to request.referrer || root_url
    end

    # private

    def actual_role_params
        params.require(:actual_role).permit(:organization, :role, :details, :start_date, :end_date)
    end

    def correct_user
        @actual_role = current_user.actual_roles.find_by(id: params[:id])
        redirect_to root_url if @actual_role.nil?
    end
end
