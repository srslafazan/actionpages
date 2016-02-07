class ReferralpagesController < ApplicationController
  before_action :set_referralpage, only: [:show, :edit, :update, :destroy]

  # GET /referralpages
  # GET /referralpages.json
  def index
    @referralpages = Referralpage.all
  end

  # GET /referralpages/1
  # GET /referralpages/1.json
  def show
    @rewards = Reward.all
    @twitter_message = @referralpage.twitter
  end

  # GET /referralpages/new
  def new
    @page = Page.find(params[:page_id])
    @page.referralpage = Referralpage.new
  end

  # GET /referralpages/1/edit
  def edit
  end

  # POST /referralpages
  # POST /referralpages.json
  def create
    @page = Page.find(params[:page_id])
    @page.referralpage = Referralpage.new(referralpage_params)

    respond_to do |format|
      if @referralpage.save
        format.html { redirect_to @referralpage, notice: 'Referral page was successfully created.' }
        format.json { render :show, status: :created, location: @referralpage }
      else
        format.html { render :new }
        format.json { render json: @referralpage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /referralpages/1
  # PATCH/PUT /referralpages/1.json
  def update
    respond_to do |format|
      if @referralpage.update(referralpage_params)
        format.html { redirect_to page_referralpage_path, notice: 'Referral page was successfully updated.' }
        format.json { render :show, status: :ok, location: @referralpage }
      else
        format.html { render :edit }
        format.json { render json: @referralpage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /referralpages/1
  # DELETE /referralpages/1.json
  def destroy
    @referralpage.destroy
    respond_to do |format|
      format.html { redirect_to referralpages_url, notice: 'Referral page was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_referralpage
      @referralpage = Referralpage.find(params[:id])
      @page = Page.find(params[:page_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def referralpage_params
      params.require(:referralpage).permit(:facebook, :twitter, :image, :navcolor, :rheadline, :rheadlinecolor, :rbackgroundcolor, :rboxcolor, :rcountcolor, :rhow, :rhowcolor, :rightheadline, :rightsub, :rightcolor, :bottomsub, :reward1, :reward2, :reward3, :reward4)
    end
end
