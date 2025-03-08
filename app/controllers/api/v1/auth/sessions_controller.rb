class Api::V1::Auth::SessionsController < ApplicationController
  def index
    if current_api_v1_user
      render status: :ok, json: { is_login: true, data: current_api_v1_user }
    else
      render status: :unauthorized, json: { is_login: false, message: "ユーザーが存在しません" }
    end
  end
end
