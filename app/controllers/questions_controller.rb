class QuestionsController < ApplicationController

  def ask
  end  

  def answer
    @answer = params[:ask]
    if @answer.downcase == "I am going to work".downcase
      @response = "Great!"
    elsif @answer[-1] == "?"
      @response = "Silly question, get dressed and go to work!."
    else
      @response = "I don't care, get dressed and go to work!"
    end
  end
end
