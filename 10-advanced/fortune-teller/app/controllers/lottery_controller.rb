class LotteryController < ApplicationController
  def numbers
    candidates = (1..40).to_a.shuffle
    winners = candidates.take 8

    render :json => winners
  end
end
