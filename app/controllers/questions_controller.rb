class QuestionsController < ApplicationController

  def ask
  end
  def answer
    @question = params['question']
    @response = coach_answer_enhanced(@question)
  end

private

  def coach_answer_enhanced(your_message)
    if your_message.to_s.include?("?") && your_message.to_s != your_message.upcase
      'Silly question, get dressed and go to work!'
    elsif your_message.to_s.include?("?") && your_message.to_s == your_message.upcase
      'I can feel your motivation! Silly question, get dressed and go to work!'
    elsif your_message.to_s == "I AM GOING TO WORK RIGHT NOW!"
      ''
    else
      "I don't care, get dressed and go to work!"
    end
  end
end
