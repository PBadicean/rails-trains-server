class Admin::CarsController < Admin::BaseController

  before_action :set_car, only: [ :show, :edit, :update, :destroy ]
  before_action :set_train, only: [:new, :create, :index]

  def index
    @cars = @train.cars
  end

  def new
    @car = Car.new
  end

  def show
  end

  def create
    @car = @train.cars.new(car_params)
    if @car.save
      redirect_to admin_train_cars_path(@train, @car)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @car.update(car_params)
      redirect_to admin_train_cars_path(@car)
    else
      render :edit
    end
  end

  def destroy
    @car.destroy
    redirect_to admin_train_cars_path( @car)
  end

  protected

  def set_train
    @train = Train.find(params[:train_id])
  end

  def set_car
    @car = Car.find(params[:id])
  end

  def car_params
    params.require(:car).permit :type, :bottom_seats, :top_seats, :train_id,
                                :side_bottom_seats, :side_top_seats,
                                :sedentery_seats, :number
  end

end
