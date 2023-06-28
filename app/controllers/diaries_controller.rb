class DiariesController < ApplicationController
  def index
    @diaries = Diary.order(datetime: :desc)
  end

  def new
    @diary = Diary.new
  end

  def create
    @diary = Diary.new(diary_params)
    if @diary.save
      redirect_to diaries_path
    else
      render :new
    end
  end

  def destroy
    diary = Diary.find(params[:id])
    if diary.destroy
      redirect_to diaries_path
    end
  end

  private
  
  def diary_params
    params.require(:diary).permit(:datetime, :content, :image, :emotion, :score)
  end
end
