class Personage < ApplicationRecord
  def in_range?(value, target, error_margin)
    puts " #{value}, #{target}, #{error_margin}"
    min = target - error_margin
    max = target + error_margin
    value.between?(min, max)
  end

  def in_circle?(coordinates, circle_radius)
    puts "this is the coordinates inside the method #{coordinates}"
    puts "this is the circle_radius inside the method #{circle_radius}"
    in_range?(x, coordinates[:x], circle_radius) &&
      in_range?(y, coordinates[:y], circle_radius)
  end
end
