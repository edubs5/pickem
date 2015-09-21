class Api::V1::TeamsController < Api::V1::BaseController
  def index
    render json: teams
  end

  def show
    render json: team
  end

  def create
    team = teams.create(teams_params)
    if team.save
      render json: team
    else
      render json: { error: "Internal Server Error" },
      status: :internal_server_error
    end
  end

  private

  def teams
    @teams ||= Team.all
  end

  def team
    @team ||= teams.find(params[:id])
  end

  def teams_params
    params.permit(:name)
  end
end
