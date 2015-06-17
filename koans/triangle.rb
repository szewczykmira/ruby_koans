# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def is_triangle(a,b,c)
    a_lesser = a < b + c
    b_lesser = b < a + c
    c_lesser = c < a + b
    return a_lesser && b_lesser && c_lesser
end
def triangle(a,b, c)
    if ! is_triangle a, b, c
        raise TriangleError
    end
    value = :scalene
    if a == b  || b == c || a == c
        value = :isosceles
        if a == b && b == c
            value = :equilateral
        end
    end
    return value
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
