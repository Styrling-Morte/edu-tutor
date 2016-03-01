class TutorDetailsController < ApplicationController

  def index
    if current_user.blank?
      render "login"
    else
      render "tutor_detailed_homepage.html.erb"
    end
  end

  def show

  end

  def create
    tutor_detail = TutorDetail.new(tutor_detail_params)
    if tutor_detail.save
      tutor_detail.specializations.create(specilization_params)
      redirect_to user_tutor_details_path, notice: "your information was submitted successfully!"
    else
       redirect_to :back
    end

  end

  def search
    render 'search'
  end

  

private
 def tutor_detail_params
       params.permit(:user_id, :bio, :image)
  end

  def specilization_params
       params.permit(:years_of_experience, :qualification1, :qualification2, :subject_id ) 
  end
end
