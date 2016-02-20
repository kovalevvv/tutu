class CoachesController < ApplicationController

  before_action :set_coach, only: [:destroy, :edit, :update]

  def index
    @coaches = Coach.all
  end

  def new
    @coach = Coach.new
  end

  def edit
  end

  def update
    if @coach.update(coach_params)
      redirect_to coaches_url, notice: 'Вагон успешно обновлен'
    else
      render :edit
    end
  end

  def create
    @coach = Coach.new(coach_params)
    if @coach.save
      redirect_to coaches_url, notice: 'Вагон успешно создан'
    else
      render :new
    end
  end

  def destroy
      @coach.destroy
      redirect_to coaches_url, notice: 'Мы уничтожили вагон вместе с содержимым!'
    end

    private

    def set_coach
      @coach = Coach.find(params[:id])
    end

    def coach_params
      params.require(:coach).permit(:coach_type, :seats_all_up, :seats_all_down, :train_id)
    end
end