class QuizzesController < ApplicationController
  before_action :set_quiz, only: [ :show, :check_answer, :correct, :incorrect ]

  def show
    @choices = @quiz.choices.shuffle
  end

  def check_answer
    selected_choice = Choice.find(params[:choice_id])
    redirect_to selected_choice.answer ? correct_quiz_path(@quiz) : incorrect_quiz_path(@quiz)
  end

  def correct; end

  def incorrect; end

  private

  def set_quiz
    @quiz = Quiz.find(params[:id])
  end
end
