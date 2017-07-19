class V1::AuthenticationController < ApplicationController
  def authenticate_user
    user = User.find_for_database_authentication(email: params[:email])
    if user.valid_password?(params[:password])
      render json: payload(user)
    else
      render json: {errors: ['Invalid Username/Password']}, status: :unauthorized
    end
  end

  private

  def payload(user)
    return nil unless user and user.id
    {
      auth_token: JsonWebToken.encode({user_id: user.id}),
      user: {id: user.id, email: user.email}
    }
  end
end


# rails c
# User.create(email:'a@a.com', password:'changeme', password_confirmation:'changeme')

# request api-key in terminal- returns <api-key>
# curl -X POST -d email="a@a.com" -d password="changeme" http://localhost:3000/v1/auth_user

# authorize user in terminal
# curl --header "Authorization: Bearer <api-key>" http://localhost:3000/v1/home
