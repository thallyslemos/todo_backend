class SessionsController < ApplicationController
  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      token = JWT.encode({ user_id: user.id }, 'secretKey@123')
      render json: { token: token }
    else
      render json: { error: 'Email ou senha inválidos!' }, status: :unauthorized
    end
  end

  def destroy
  end
end
