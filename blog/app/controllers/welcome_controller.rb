class WelcomeController < ApplicationController
  def index
    # so the shown page for localhost:3000 is article.html.erb
    redirect_to articles_path
  end
end
