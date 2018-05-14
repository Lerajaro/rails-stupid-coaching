class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @q = params[:question]

    if @q == "I am going to work"
      @answer = "Great!"
    elsif @q.blank?
      @answer = "I don't care, get dressed and go to work!"
    elsif @q.include?("?")
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end

  end
end
