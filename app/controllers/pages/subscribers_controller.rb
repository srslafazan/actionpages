class Pages::SubscribersController < SubscribersController
before_action :set_subscriberable
	def show
	end

	def create
		@subscriber = @subscriberable.subscribers.new subscriber_params
		@subscriber.page = @page
		@subscriber.save
		redirect_to page_referralpage_path(id: @subscriberable.id)
	end

	private

	def set_subscriberable
		@subscriberable = Page.find(params[:page_id])
	end

	def set_subscriber
		@subscriber = Subscriber.find(params[:id])
	end
end
