module Api
    class ArticlesController < ApplicationController
      def index
        @articles = Article.page(params[:page]).per(params[:per_page])
        render json: { data: @articles, message: 'Articles retrieved successfully' }
      end
    end
  end
  