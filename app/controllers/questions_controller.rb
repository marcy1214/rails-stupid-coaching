class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @question = params[:question]
    if @question.blank?
      @answer = "I cant hear you"
    elsif @question.end_with?('?')
      @answer = 'Silly questions, get dressed and go to work!'
    elsif @question =~ /i am going to work/i
      @answer = 'great!'
    else
      @answer = "I dont care, get dressed and go to work!"
    end
  end
end
