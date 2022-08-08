class MoviesController < ApplicationController
  before_action :set_movie, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show, :search]

  def index
    @movies = Movie.all
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.create movie_params

    if @movie.persisted?
       redirect_to movies_path, notice: "La reseña ha sido creada de forma exitosa"
       UserMailer.hello.deliver_now
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
  end

  def edit
  end

  def update
    @movie.update movie_params

    if @movie.update movie_params
        redirect_to movies_path, notice: "La reseña ha sido actualizada de forma exitosa"
    else
        render :edit, status: :unprocessable_entity
    end
  end 

  def destroy
    @movie.categories.clear if @movie.categories.any?
    @movie.comments.destroy_all if @movie.comments.any?
    @movie.destroy
    redirect_to movies_path, 
    status: :see_other, notice: "La reseña ha sido eliminada de forma exitosa"
  end

  def search
    @q = params[:q]
    @movie = Movie.where("title ILIKE ?", "%#{@q}%")
  end

  private

  def set_movie
    @movie = Movie.friendly.find(params[:id])
  end

  def movie_params
    params.require(:movie).permit(:title, :date, :platform, :review, :cover, category_ids:[])
  end
end
