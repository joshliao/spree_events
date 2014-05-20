class Spree::EventsController < Spree::BaseController
  before_action :set_event, only: [:show]

  # GET /events
  def index
    @events = Spree::Event.all
  end

  # GET /events/1
  def show
  end

  def tag
    @events = ::Spree::Event.tagged_with(params[:tag])
    render :index
  end
  
  private
  
  # Use callbacks to share common setup or constraints between actions.
  def set_event
    @event = Spree::Event.find(params[:id])
  end
  
  # Only allow a trusted parameter "white list" through.
  def event_params
    params.require(:event).permit(:title, :body, :published, :datetime, :location)
  end
end
