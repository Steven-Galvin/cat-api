class ApplicationController < ActionController::API
include Response
attr_reader :current_user

  rescue_from ActiveRecord::RecordNotFound do |exception|
    json_response({ message: exception.message }, :not_found)
  end

  attr_reader :current_user

 protected
  def authenticate_request!
   unless user_id_in_token?
     render json: { errors: ['Not Authenticated'] }, status: :unauthorized
     return
   end
   @current_user = User.find(auth_token[:user_id])
  rescue JWT::VerificationError, JWT::DecodeError
   render json: { errors: ['Not Authenticated'] }, status: :unauthorized
  end

  private
  def http_token
     @http_token ||= if request.params['app_id'].present?
       request.params['app_id'].split(' ').last
     end
  end

  def auth_token
   @auth_token ||= JsonWebToken.decode(http_token)
  end

  def user_id_in_token?
   http_token && auth_token && auth_token[:user_id].to_i
  end
end
