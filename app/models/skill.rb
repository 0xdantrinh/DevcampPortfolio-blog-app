class Skill < ApplicationRecord
  validates :title, :percent_utilized, presence: true
  includes Placeholder

  after_initialize :set_defaults

  def set_defaults
    self.badge ||= Placeholder.image_generator(250, 250)
  end
end
