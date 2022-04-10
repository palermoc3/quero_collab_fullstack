class MostRankedPostsController < ApplicationController
  before_action :set_most_ranked_post, only: %i[ show edit update destroy ]

  # GET /most_ranked_posts or /most_ranked_posts.json
  def index
    @most_ranked_posts = MostRankedPost.all
  end

  # GET /most_ranked_posts/1 or /most_ranked_posts/1.json
  def show
  end

  # GET /most_ranked_posts/new
  def new
    @most_ranked_post = MostRankedPost.new
  end

  # GET /most_ranked_posts/1/edit
  def edit
  end

  # POST /most_ranked_posts or /most_ranked_posts.json
  def create
    @most_ranked_post = MostRankedPost.new(most_ranked_post_params)

    respond_to do |format|
      if @most_ranked_post.save
        format.html { redirect_to most_ranked_post_url(@most_ranked_post), notice: "Most ranked post was successfully created." }
        format.json { render :show, status: :created, location: @most_ranked_post }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @most_ranked_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /most_ranked_posts/1 or /most_ranked_posts/1.json
  def update
    respond_to do |format|
      if @most_ranked_post.update(most_ranked_post_params)
        format.html { redirect_to most_ranked_post_url(@most_ranked_post), notice: "Most ranked post was successfully updated." }
        format.json { render :show, status: :ok, location: @most_ranked_post }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @most_ranked_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /most_ranked_posts/1 or /most_ranked_posts/1.json
  def destroy
    @most_ranked_post.destroy

    respond_to do |format|
      format.html { redirect_to most_ranked_posts_url, notice: "Most ranked post was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_most_ranked_post
      @most_ranked_post = MostRankedPost.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def most_ranked_post_params
      params.require(:most_ranked_post).permit(:user_id, :posts_id)
    end
end
