class PagesController < ApplicationController
  def home
    @posts = Blog.all
    @skills = Skill.all
  end

  def about
  end

  def contact
  end

  def something
    @else = params[:something]
    @another_one = params[:another_one]
  end
end
