class RootController < ApplicationController

  def index
    @adverts = Advert.ordered
  end
end
