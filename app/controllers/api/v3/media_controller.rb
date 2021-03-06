module Api
  module V3
    class MediaController < V3::BaseController

      include Api::Version3
      include Api::TaxonomyScope

      before_filter :find_resource, :only => %w{show update destroy}

      def index
        @media = Medium.
          authorized(:view_media).
          search_for(*search_options).paginate(paginate_options)
      end

      def show
      end

      def create
        @medium = Medium.new(params[:medium])
        process_response @medium.save
      end

      def update
        process_response @medium.update_attributes(params[:medium])
      end

      def destroy
        process_response @medium.destroy
      end

    end
  end
end
