class PagesController < ApplicationController
  def home
  end

  def about
  end

  def contact
  end

  def bands
    @users = User.all
  end

  def hosts
    @users = User.all
  end


end


