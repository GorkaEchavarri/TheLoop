class PostsController < ApplicationController
  before_action :find_post only: %i[show edit update destroy]
  def new #is form page in community/:id/new_post or something like that
    @community = Community.find(params[:id])
    @post = Post.new
  end

  def create
    @post = Post.new(posts_params)
    @post.community_id = @community.id
    @post.user_id = @current_user.id

    if @post.save
      redirect_to new_community_post_path(@post) #<<<<post show path here
    else
      render "new", status: :unprocessable_entity
    end
  end

  def index
    #remove from route
  end

  def show
    #@community = Community.find(params[:id]) <not sure if needed
    @post = Post.find(params[:id]) #<mightneed to change could be getting two lots of ids
  end

  def edit
    @post = Post.find(params[:id])

    #@community_id = @post.community_id and something for user_id?? #<<maybe dont need that?


  end

  def update
    @
    @post = Post.update(post_params)
  end

  def destroy
  end

 private
  def find_post
    @post = Post.find(params[:id])
  end

  def posts_params
    params.require(:post).permit(:title, :content, :image, :is_flag)
  end
end
index
                                  POST   /communities/:community_id/posts/:post_id/comments(.:format)          comments#create
       new_community_post_comment GET    /communities/:community_id/posts/:post_id/comments/new(.:format)      comments#new
      edit_community_post_comment GET    /communities/:community_id/posts/:post_id/comments/:id/edit(.:format) comments#edit
           community_post_comment PATCH  /communities/:community_id/posts/:post_id/comments/:id(.:format)      comments#update
                                  PUT    /communities/:community_id/posts/:post_id/comments/:id(.:format)      comments#update
                                  DELETE /communities/:community_id/posts/:post_id/comments/:id(.:format)      comments#destroy
                  community_posts GET    /communities/:community_id/posts(.:format)                            posts#index
                                  POST   /communities/:community_id/posts(.:format)                            posts#create
               new_community_post GET    /communities/:community_id/posts/new(.:format)                        posts#new
              edit_community_post GET    /communities/:community_id/posts/:id/edit(.:format)                   posts#edit
                   community_post GET    /communities/:community_id/posts/:id(.:format)                        posts#show
                                  PATCH  /communities/:community_id/posts/:id(.:format)                        posts#update
                                  PUT    /communities/:community_id/posts/:id(.:format)                        posts#update
                                  DELETE /communities/:community_id/posts/:id(.:format)                        posts#destroy
