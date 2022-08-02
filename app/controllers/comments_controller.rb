class CommentsController < ApplicationController
    before_action :set_product, only: [:create]
    before_action :authenticate_user!

    def create
        @movie.comments.create(comment_params)
        redirect_to @movie, notice: "El comentario ha sido creado de forma exitosa"
    end

    private

    def set_product
        @movie = Movie.find_by slug:(params[:movie_id])
    end

    def comment_params
        params.require(:comment).permit(:content)
    end

end