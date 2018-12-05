module DefaultPageContent
  extend ActiveSupport::Concern

  included do
    before_action :set_page_defaults
  end

  def set_page_defaults
    @page_title = "DevcampPortfolio | Daniel's Website"
    @seo_keywords = "Daniel Trinh portfolio"
  end

end