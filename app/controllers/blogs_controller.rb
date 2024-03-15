class BlogsController < ApplicationController
  cattr_accessor :request_count
  @@request_count = 0

  before_action :set_user
  before_action :set_admin
  before_action :set_blog, only: %i[ show edit update destroy ]

  # GET /blogs or /blogs.json
  def index
    logger.info("***** Request ##{@@request_count+=1}: #{request.request_id}".red)

    @blogs = Blog.order('created_at desc')
  end

  # GET /blogs/1 or /blogs/1.json
  def show
  end

  # GET /blogs/new
  def new
    @blog = Blog.new
  end

  # GET /blogs/1/edit
  def edit
  end

  # POST /blogs or /blogs.json
  def create
    @blog = Blog.new(blog_params)
    @blog.user = @user

    if @blog.save
      redirect_to blogs_url, notice: "Blog was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /blogs/1 or /blogs/1.json
  def update
    if @blog.update(blog_params)
      redirect_to blogs_url, notice: "Blog was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /blogs/1 or /blogs/1.json
  def destroy
    @blog.destroy

    redirect_to blogs_url, notice: "Blog was successfully destroyed."
  end

  private
    def set_admin
      cookies[:admin] = true if params[:admin] == '1'
      cookies.delete(:admin) if params[:admin] == '0'
    end
    def set_user
      @user = User.first 
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_blog
      @blog = Blog.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def blog_params
      params.require(:blog).permit(:name)
    end
end
