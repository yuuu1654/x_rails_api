# devise_token_authで予め用意されている認証用のコントローラを継承させる
class Api::V1::Auth::RegistrationsController < DeviseTokenAuth::RegistrationsController
end
