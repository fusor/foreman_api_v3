module Api
  module V3
    class FiltersController < V3::BaseController

      include Api::Version3

      def index
        super
        render :json => @filters, :each_serializer => FilterSerializer
      end

      def show
        render :json => @filter, :serializer => FilterSerializer
      end

    end
  end
end
