class GamesController < ApplicationController
  def load_game
    cookies[:number] = rand(100).to_i
    @user_id = session[:user_id]
    render 'try'
  end

  def try
    @random_num  = cookies[:number]
    @winstatus = ''
    @input_num = params[:number]
    if @input_num == @random_num
      @winstatus = 'You win!'
    elsif @input_num > @random_num
      @winstatus = 'Your guess is too high.'
    elsif @input_num < @random_num
      @winstatus = 'Your guess is too low.'
    end
  end
end
