class HomeController < ApplicationController
  helper_method :sort_column, :sort_direction
  
  def index
    if (params[:sort] != nil && params[:direction] != nil)
      @books = Book.order(params[:sort] + ' ' + params[:direction])
    elsif (params[:filter] != nil)
      filter = params[:filter]
      @books = Book.where("title LIKE ? OR description LIKE ? OR author LIKE ?", "%#{filter}%", "%#{filter}%", "%#{filter}%")
    else
      @books = Book.all
    end
  end

  private
  def sort_column
    Book.column_names.include?(params[:sort]) ? params[:sort] : 'title'
  end

  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : 'asc'
  end
end
