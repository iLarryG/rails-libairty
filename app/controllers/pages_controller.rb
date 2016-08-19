class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
    @background = ["Germany_Hintersee_Lake.jpg", "Vietnam_Mu_Cang_Chai.jpg", "France_Mont_Saint_Michel.jpg"].sample
  end
end
