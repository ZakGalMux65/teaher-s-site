class AchievementsController < ApplicationController
  def index
    @achievements = Achievement.all.order(updated_at: :desc)
  end

  def show
    @achievement = Achievement.find(params[:id])
  end

  def new; end

  def create
    @achievement = achievements.new(achievement_params)

    if @achievement.save
      redirect_to @achievement
    else
      render action: 'new'
    end
  end

  private

  def achievement_params
    params.require(:achievement).permit(:title, :description, :image)
  end
end
