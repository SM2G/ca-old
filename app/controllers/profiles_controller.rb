class ProfilesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_documents, only: [:new,  :create, :edit,   :update]
  before_action :set_profile,   only: [:show, :edit,   :update, :destroy]

  respond_to :html

  def index
    @profiles = current_user.profiles.order(name: :desc)
    respond_with(@profiles)
  end

  def show
    respond_with(@profile)
  end

  def new
    @profile = Profile.new
    respond_with(@profile)
  end

  def create
    @profile = current_user.profiles.new(profile_params)
    @profile.save
    respond_with(@profile)
  end

  def edit
  end

  def update
    Profiles::UpdateService.new(@profile, profile_params).call
    respond_with(@profile)
  end

  def destroy
    Profiles::DestroyService.new(@profile).call
    respond_with(@profile)
  end

  private

  def set_documents
    @documents = current_user.documents
  end

  def set_profile
    @profile = current_user.profiles.find(params[:id])
  end

  def profile_params
    documents      = current_user.documents.where(id: params[:profile][:document_ids])
    profile_params = params.require(:profile).permit(:name)

    profile_params[:document_ids] = documents.pluck(:id)

    profile_params
  end
end
