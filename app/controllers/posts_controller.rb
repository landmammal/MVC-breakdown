class PostsController < ApplicationController

    def index
      # stores all objects created in a instance varable in this case @posts .
      @posts = Post.all
    end

    def show
      # stores a single post in the instance variable @post
      @post = Post.find(params[:id])
      # passing the find method along with the params method
      # the params method gets the url for this one object and stores it in a hash
      # making that object accessible at object/id
    end

    def new
      @post = Post.new
    end

    def create
      # @post = Post.new
      # @post.title = params[:post][:title]
      # @post.body = params[:post][:body]
      # @post.save
      
      @post = Post.new(params[:post])
      @post.save

      redirect_to post_path(@post)


    end

end
