class Song < ActiveRecord::Base
  validates :title, presence: true
  validates :release_year, numericality: { only_integer: true, less_than_or_equal_to: Date.today.year }, presence: true, if: :released?
  validates :release_year, uniqueness: true


  def released?
    self.released == true
  end






end
