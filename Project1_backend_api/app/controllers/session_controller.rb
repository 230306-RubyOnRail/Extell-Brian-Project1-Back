class SessionController < ApplicationController
  def create

    # might need to encapsulate this find_by in some kind of check
    # this needs to be updated in accordance with JWT.
    user = User.find_by(email: params[:email])

    if user && user.authenticate(params[:password_digest])
      scope = user.manager == "manager" ? "manager" : "user"
      token = Token.generate(user, scope)

      render json: {token: token.token}
    else
      render json: {error: "Invalid email/pass combination" }, status: :unprocessable_entity
    end
  end
end
