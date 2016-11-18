class PagesController < ApplicationController
 	before_action :authorize, except: [:index]
  def index
  end

  def upload
  	
  end
end
