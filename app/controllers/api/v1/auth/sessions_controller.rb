# frozen_string_literal: true

module Api
  module V1
    module Auth
      class SessionsController < ApplicationController
        def index
          if current_api_v1_user # ここでセッションを使用
            render status: :ok, json: { is_login: true, data: current_api_v1_user }
          else
            render status: :unauthorized, json: { is_login: false, message: 'ユーザーが存在しません' }
          end
        end
      end
    end
  end
end
