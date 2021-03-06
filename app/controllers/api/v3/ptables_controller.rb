module Api
  module V3
    class PtablesController < V2::PtablesController

      include Api::Version3

      def index
        super
        render :json => @ptables, :each_serializer => PtableSerializer
      end

      def show
        render :json => @ptable, :serializer => PtableSerializer
      end

      def update
        render :json => @ptable, :serializer => PtableSerializer
      end

    end
  end

end
http://kehilanews.co.il/כתבה-מטעה-על-מנהיג-יהודי-משיחי-בתקשורת