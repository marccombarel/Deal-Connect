class CompaniesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def new
  end

  def create
  end

  def index
    @companies = Company.all
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
