# frozen_string_literal: true

class User::RegistrationsController < Devise::RegistrationsController
  # POST /resource
  def create
    super
    resource.avatar = params[:user][:avatar] 
    resource.save
  end

  # PUT /resource
  def update
    super
    resource.avatar = params[:user][:avatar] 
    resource.save
  end

  protected

  # The path used after sign up.
  def after_sign_up_path_for(resource)
    forums_path
  end

end
