class StaticController < ApplicationController
  before_action :authenticate_user, only: [:user]
  def main

  end

  def user

  end

end
