class TweetsController < ApplicationController
	def Index
		@tweets = Tweet.all
	end

	def new
		@tweet = Tweet.new
	end

	def create
		@tweet = Tweet.new(tweet_params)
		@tweet.save
		redirect_to root_path
	end

	def tweet_params
    params.require(:tweet).permit(:message)
  end
end
