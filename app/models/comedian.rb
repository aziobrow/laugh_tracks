class Comedian < ActiveRecord::Base
  has_many :specials

  def mean_age
    mean = Comedian.average(:age)
    mean.to_i
  end


end
