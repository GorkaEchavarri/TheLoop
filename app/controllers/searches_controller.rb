class SearchesController < ApplicationController

  def index
    @query = params[:query]
    @results = PgSearch.multisearch(@query)
    @posts = []
    @results.each { |result| @posts << Post.where(id: result.searchable_id) if result.searchable_type == "Post"}
  end
end
