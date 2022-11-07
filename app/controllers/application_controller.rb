class ApplicationController < ActionController::Base
  # アプリケーションを完成させよう2＞6章＞
  # ページを表示させる＞Controller
  # ストロングパラメータ
  
  # devise利用の機能（ユーザ登録、ログイン認証など）が使われる前に
  # configure_permitted_parametersメソッドが実行される
   before_action :configure_permitted_parameters, if: :devise_controller?

  # アプリケーションを完成させよう2＞7章＞
  # after_sign_in_path_for
  # サインイン後の遷移先をAboutページに設定
  def after_sign_in_path_for(resource)
    about_path
  end

  # アプリケーションを完成させよう2＞7章＞
  # after_sign_out_path_for
  # サインアウト後の遷移先をAboutページに設定
  def after_sign_out_path_for(resource)
    about_path
  end

  # privateは記述をしたコントローラ内でしか参照できないが
  # protectedは呼び出された他のコントローラからも参照することができる
  protected

  # configure_permitted_parametersメソッドでは、
  # devise_parameter_sanitizer.permitメソッドを使うことで
  # ユーザー登録(sign_up)の際に、ユーザー名(name)のデータ操作を許可している
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end
  
end
