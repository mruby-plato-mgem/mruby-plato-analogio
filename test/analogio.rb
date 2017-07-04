# Plato::AnalogIO class

assert('AnalogIO', 'class') do
  assert_equal(Plato::AnalogIO.class, Class)
end

assert('AnalogIO', 'superclass') do
  assert_equal(Plato::AnalogIO.superclass, Plato::GPIO)
end

assert('AnalogIO', 'new') do
  Plato::AnalogIO.new(0)
end

assert('AnalogIO', 'new - argument error') do
  assert_raise(ArgumentError) {Plato::AnalogIO.new}
  assert_raise(ArgumentError) {Plato::AnalogIO.new(1, 2)}
end

assert('AnalogIO', 'resolution=') do
  assert_equal(Plato::AnalogIO.new(0).resolution, 10)
end
