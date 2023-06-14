class SearchesController < ApplicationController

  def index
    @query = params[:query]
    @results = PgSearch.multisearch(@query)

    @posts = []
    @results.each { |result| @posts << Post.find(result.searchable_id) if result.searchable_type == "Post"}

    @communities = []
    @results.each { |result| @communities << Community.find(result.searchable_id) if result.searchable_type == "Community"}

    @comments = []
    @results.each { |result| @comments << Comment.find(result.searchable_id) if result.searchable_type == "Comment"}

  end
end
