class SubscribersController < ApplicationController
		def create
		@subscriber = @subscriberable.subscribers.new subscriber_params
		@subscriber.page = @page
		@subscriber.save
		redirect_to page_referralpage_path(id: @subscriberable.id)
		
	end

	private

	def subscriber_params
		params.require(:subscriber).permit(:email)
	end
end
