class WardsController < ApplicationController

  def create
    ward = Ward.new(ward_params)
    if ward.save
      tutorial_params[:subject_ids].each do |id|
      subject_id = {"subject_id" => id}
      ward.tutorial_subjects.create(subject_id)
    end
      redirect_to :back
    else
      # show errors
    end
  end

  def generate_page
    @selected = Ward.find(params[:ward_id])
    respond_to do |format|
      format.js
    end
  end

  private

  def ward_params
    params.permit(:first_name, :grade_school_level, :user_id)
  end

  def tutorial_params
    params.permit(:subject_ids => [])
  end

end
