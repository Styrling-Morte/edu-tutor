class TutorDetailsController < ApplicationController
  def create 
   @movie = Movie.new(movie_params)

    if @movie.save
      redirect_to movies_path, notice: "#{@movie.title} was submitted successfully!"
    else
      render :new
    end

  end 



 def movie_params
      params.require(:movie).permit(
        :title, :release_date, :director, :runtime_in_minutes, :poster_image_url, :description, :avatar
      )
  end
end 
