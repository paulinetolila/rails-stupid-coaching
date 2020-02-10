# frozen_string_literal: true

class QuestionsController < ApplicationController
  helper_method :answer

  def ask
  end

  def answer
    if params[:question] == 'I am going to work'
      answer = 'Great!'
    elsif params[:question].chars.include?('?')
      answer = 'Silly question, get dressed and go to work!'
    else
      answer = "I don't care, get dressed and go to work!"
    end
    answer
  end
end
