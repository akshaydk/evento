class UsersController < ApplicationController

  def edit
    @user = User.where(id: params[:id]).first

    @districts = [['a','b'],['c','d']]
  end

  def show
    @user = current_user
    if @user.needsEdit?
      return render('users/edit')
    end
  end

  def update
    @user = current_user
    params_user = params[:user]
    @user.full_name = params_user[:full_name]
    @user.rsfi_id = params_user[:rsfi_id]
    @user.email = params_user[:email]
    @user.phone = params_user[:phone]
    @user.gender = params_user[:gender]
    @user.occupation = params_user[:occupation]
    @user.address = params_user[:address]
    @user.district = params_user[:district]
    @user.pin_code = params_user[:pin_code]
    @user.dob = params[:user][:dob]

    @user.save!
    redirect_to :event_registrations
  end

  private

  def user_params
    params.require(:id).permit(:id, :full_name, :rsfi_id, :email, :phone, :gender, :address, :pincode)
  end
end
