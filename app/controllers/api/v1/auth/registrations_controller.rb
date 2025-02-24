# frozen_string_literal: true

module Api
  module V1
    module Auth
      class RegistrationsController < DeviseTokenAuth::RegistrationsController
        private

        # 以下を実装しなくても、Devise側でデフォルトで email, password, password_confirmation が許可されている
        # nameも許可したいなら以下のようにオーバーライドする
        def sign_up_params
          params.permit(%i[name email password password_confirmation phone, birthday])
        end

        # 登録成功時のレスポンスをカスタマイズ
        def render_create_success
          render json: {
            status: 'success',
            data: resource_data,
            message: I18n.t('devise.registrations.signed_up_but_unconfirmed')
          }
        end
      end
    end
  end
end
