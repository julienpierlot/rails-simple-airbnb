class PagesController < ApplicationController
  def search
    @flats = Flat.where('name LIKE ?', params[:keywords])
    if @flats.empty?
      flash[:notice] = "No results sorry"
      redirect_to flats_path
    end
  end
end
