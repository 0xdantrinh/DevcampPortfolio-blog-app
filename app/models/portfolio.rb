class Portfolio < ApplicationRecord
  validates :title, :body, :main_image, :thumb_image, presence: true
  includes Placeholder
  has_many :technologies
  accepts_nested_attributes_for :technologies, reject_if: lambda { |attrs| attrs['name'].blank? }


  def self.angular
    where(subtitle: "Angular")
  end

  scope :ruby_on_rails_portfolio_items, -> {where(subtitle: "Ruby on Rails")}

  after_initialize :set_defaults

  def set_defaults
    self.main_image ||= Placeholder.image_generator(600, 450)
    self.thumb_image ||= Placeholder.image_generator(300, 300)
  end

end
