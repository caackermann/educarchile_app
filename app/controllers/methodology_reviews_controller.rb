class MethodologyReviewsController < ApplicationController
  before_action :set_methodology_review, only: [:show, :edit, :update, :destroy]

  # GET /methodology_reviews
  # GET /methodology_reviews.json
  def index
    @methodology_reviews = MethodologyReview.all
  end

  # GET /methodology_reviews/1
  # GET /methodology_reviews/1.json
  def show
  end

  # GET /methodology_reviews/new
  def new
    @methodology_review = MethodologyReview.new
  end

  # GET /methodology_reviews/1/edit
  def edit
  end

  # POST /methodology_reviews
  # POST /methodology_reviews.json
  def create
    @methodology_review = MethodologyReview.new(methodology_review_params)

    respond_to do |format|
      if @methodology_review.save
        format.html { redirect_to @methodology_review, notice: 'Methodology review was successfully created.' }
        format.json { render :show, status: :created, location: @methodology_review }
      else
        format.html { render :new }
        format.json { render json: @methodology_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /methodology_reviews/1
  # PATCH/PUT /methodology_reviews/1.json
  def update
    respond_to do |format|
      if @methodology_review.update(methodology_review_params)
        format.html { redirect_to @methodology_review, notice: 'Methodology review was successfully updated.' }
        format.json { render :show, status: :ok, location: @methodology_review }
      else
        format.html { render :edit }
        format.json { render json: @methodology_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /methodology_reviews/1
  # DELETE /methodology_reviews/1.json
  def destroy
    @methodology_review.destroy
    respond_to do |format|
      format.html { redirect_to methodology_reviews_url, notice: 'Methodology review was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_methodology_review
      @methodology_review = MethodologyReview.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def methodology_review_params
      params.require(:methodology_review).permit(:stars, :description, :user_id, :methodology_id)
    end
end
