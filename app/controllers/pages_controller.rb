class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
    @background = ["Vietnam_Mu_Cang_Chai.jpg"].sample
  end
end
