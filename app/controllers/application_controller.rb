class ApplicationController < ActionController::API
    before_action :authenticate_request

    attr_reader :current_user

    private
  
    def authenticate_request
      auth_header = request.headers['Authorization']
      token = auth_header.split(' ').last if auth_header
      begin
        decoded_token = JWT.decode(token, 'secretKey@123', true, { algorithm: 'HS256' })
        @current_user = User.find(decoded_token[0]['user_id'])
      rescue JWT::DecodeError
        render json: { error: 'Acesso não autorizado' }, status: :unauthorized
      end
    end
end
