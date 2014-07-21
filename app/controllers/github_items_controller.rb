class GithubItemsController < ApplicationController
  respond_to :json

  def index
    respond_with GithubItem.all
  end

  def create
    respond_with GithubItem.create(github_item_params)
  end

  private

  def github_item_params
    params.require(:github_item).permit(
      :title,
      :content
    )
  end
end
