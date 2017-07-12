module DefaultPageContent
  extend ActiveSupport::Concern
  
  included do
     before_filter :set_page_defaults
  end
  
  def set_page_defaults
    @page_title = "Martina's Portfolio Website"
    @seo_keywords = "Martina Martinez Portfolio"
  end
end

