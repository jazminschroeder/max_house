class Admin::DogsController < ApplicationController
  respond_to :html, :json

  def index
    @dogs = Dog.all
    respond_with @dogs
  end

  def show
    @dog = Dog.find(params[:id])
    respond_with @dogs
  end

  def new
    @dog = Dog.new
  end

  def edit
    @dog = Dog.find(params[:id])
  end

  def create
    @dog = Dog.new(params[:admin_dog])
    respond_with @dog
  end

  def update
    @dog = Dog.find(params[:id])
    respond_with @dog
  end

  def destroy
    @dog = Admin::Dog.find(params[:id])
    @dog.destroy
    respond_with @dog
  end
end
