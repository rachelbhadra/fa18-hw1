class Foobar

  def self.baz(a)
    # Class method, not an instance method
    # Call with `Foobar.baz`
    # Q4 CODE HERE
    b = a.map { |a| a.to_i }
    b = b.map { |a| a + 2 }
    b = b.keep_if { |a| a % 2 == 0 }
    b = b.uniq
    b = b.keep_if { |a| a < 10 }
    b.reduce(0) { |x, y| x + y }
  end
end