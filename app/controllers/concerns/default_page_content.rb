module DefaultPageContent
   extend ActiveSupport::Concern
   
    included do 
      before_action :set_page_defaults
    end

  def set_page_defaults
    @page_title = "Devcamp Portfolio"
    @seo_keywords = "Devcamp Portfolio Blogs"
  end
    
end