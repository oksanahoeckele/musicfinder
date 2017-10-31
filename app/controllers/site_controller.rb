class SiteController < ApplicationController
  def search
    term = params[:term]
    # @results = Artist.where name: term
    # @results = Artist.where("name LIKE ?", params[:term])
    # labels = Label.where("name LIKE ?", "%#{params[:term]}%")
    # albums = Album.where("name LIKE ?", "%#{params[:term]}%")
    # artists = Artist.where("name LIKE ?", "%#{params[:term]}%")

  #   @results = []
  #   [Artist, Album, Label].each do |model|
  #     @results += model.where("name LIKE ?", "%#{params[:term]}%")
  # end


      @results = [Artist, Album, Label].map do |model|
      model.search(params[:term])
    end.flatten
  end
end
