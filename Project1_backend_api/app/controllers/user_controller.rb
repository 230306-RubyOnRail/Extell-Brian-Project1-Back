class UserController < ApplicationController

  def create
    @user = User.create(email: params[:email], password_digest: params[:password_digest])
    if @user.valid?
      token = encode_token(user_id: @user.id, manager: @user.manager)
      render json:{user:@user, token: token}, status: OK
    else
      render json:{error: "Invalid username or password"}, status: :unprocessable_entity
    end
  end

  def destroy

  end
end
