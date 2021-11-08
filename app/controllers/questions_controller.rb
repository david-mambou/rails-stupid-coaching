class QuestionsController < ApplicationController
  def ask
    # calls a view called ask.html
  end

  def answer
    @answer = if params[:question] == 'I am going to work!'
                'Great!'
              elsif params[:question]&.last == '?'
                'Silly question, get dressed and go to work!'
              else
                "I don't care, get dressed and go to work!"
              end
  end
end
