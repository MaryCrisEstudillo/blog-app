class MyBlogsController < ApplicationController
  before_action :set_my_blog, only: %i[ show edit update destroy ]

  # GET /my_blogs or /my_blogs.json
  def index
    @my_blogs = MyBlog.all
  end

  # GET /my_blogs/1 or /my_blogs/1.json
  def show
  end

  # GET /my_blogs/new
  def new
    @my_blog = MyBlog.new
  end

  # GET /my_blogs/1/edit
  def edit
  end

  # POST /my_blogs or /my_blogs.json
  def create
    @my_blog = MyBlog.new(my_blog_params)

    respond_to do |format|
      if @my_blog.save
        format.html { redirect_to @my_blog, notice: "My blog was successfully created." }
        format.json { render :show, status: :created, location: @my_blog }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @my_blog.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /my_blogs/1 or /my_blogs/1.json
  def update
    respond_to do |format|
      if @my_blog.update(my_blog_params)
        format.html { redirect_to @my_blog, notice: "My blog was successfully updated." }
        format.json { render :show, status: :ok, location: @my_blog }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @my_blog.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /my_blogs/1 or /my_blogs/1.json
  def destroy
    @my_blog.destroy
    respond_to do |format|
      format.html { redirect_to my_blogs_url, notice: "My blog was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_my_blog
      @my_blog = MyBlog.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def my_blog_params
      params.require(:my_blog).permit(:author, :title, :description, :topics)
    end
end
