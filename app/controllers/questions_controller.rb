class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @ask = params[:ask]
    if @ask == 'I am going to work'
      @answer = 'great'
    elsif @ask.end_with?('?')
      @answer = 'Silly question, get dressed'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
