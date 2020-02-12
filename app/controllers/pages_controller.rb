class PagesController < ApplicationController
  def search
    @flats = Flat.where('name LIKE ?', params[:keywords])
  end
end
