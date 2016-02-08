class ReferralPagesController < ApplicationController
  before_action :set_referral_page, only: [:show, :edit, :update, :destroy]

  def index
    @referral_pages = ReferralPage.all
  end

  def show
    @rewards = Reward.all
    @twitter_message = @referral_page.twitter
  end

  def new
    @page = Page.find(params[:page_id])
    @page.referral_page = ReferralPage.new
  end


  def edit
  end


  def create
    @page = Page.find(params[:page_id])
    @page.referral_page = ReferralPage.new(referral_page_params)

    respond_to do |format|
      if @referral_page.save
        format.html { redirect_to @referral_page, notice: 'Referral page was successfully created.' }
        format.json { render :show, status: :created, location: @referral_page }
      else
        format.html { render :new }
        format.json { render json: @referral_page.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @referral_page.update(referral_page_params)
        format.html { redirect_to page_referral_page_path, notice: 'Referral page was successfully updated.' }
        format.json { render :show, status: :ok, location: @referral_page }
      else
        format.html { render :edit }
        format.json { render json: @referral_page.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @referral_page.destroy
    respond_to do |format|
      format.html { redirect_to referral_pages_url, notice: 'Referral page was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_referral_page
      @referral_page = ReferralPage.find(params[:id])
      @page = Page.find(params[:page_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def referral_page_params
      params.require(:referral_page).permit(:facebook, :twitter, :image, :navcolor, :rheadline, :rheadlinecolor, :rbackgroundcolor, :rboxcolor, :rcountcolor, :rhow, :rhowcolor, :rightheadline, :rightsub, :rightcolor, :bottomsub, :reward1, :reward2, :reward3, :reward4)
    end
end
