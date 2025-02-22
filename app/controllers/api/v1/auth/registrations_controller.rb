class Api::V1::Auth::RegistrationsController < DeviseTokenAuth::RegistrationsController
  
  private
  # 以下を実装しなくても、Devise側でデフォルトで email, password, password_confirmation が許可されている
  # nameも許可したいなら以下のようにオーバーライドする
  def sign_up_params
    params.permit(%i[email password password_confirmation name])
  end
end
