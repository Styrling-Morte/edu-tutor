class WardsController < ApplicationController

  def create
    ward = Ward.new(ward_params)
    # if ward validates
      ward.tutorial_subject.create(tutorial_params)
    # else show errors
  end

  private

  def ward_params
    params.permit(:first_name, :grade_school_level)
  end

  def tutorial_params
    params.permit(:subject_name)
  end

end
