# frozen_string_literal: true

class Author < ApplicationRecord
  def coordinates
    [rand(90), rand(90)]
  end

  def publication_years
    (1..rand(10)).to_a.map { rand(1801..1900) }
  end
end
