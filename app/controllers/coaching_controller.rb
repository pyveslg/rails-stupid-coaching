class CoachingController < ApplicationController
  def answer
    @query = params[:query]
    @coach_answer = @query.nil? ? "" : coach_answer(@query)
  end

  def coach_answer(your_message)
    if @query == @query.upcase
      return "I can feel your motivation !"

    elsif your_message.include? "?"
      return "Silly question, get dressed and go to work!"

    elsif your_message == "I am going to work right now!"
      abort

    else
      return "I don't care, get dressed and go to work!"
    end
  end

  def ask
  end
end
