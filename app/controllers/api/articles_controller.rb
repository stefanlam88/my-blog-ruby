module Api
    class ArticlesController < ApplicationController
      def index
        @articles = Article.page(params[:page]).per(params[:per_page])
        render json: { data: @articles.as_json(include: { user: { only: [:id, :name, :email] } }), message: 'Articles retrieved successfully' }
      end
    end
  end
  