call(::Type{Sphere}, x...) = HyperSphere(x...)

call(::Type{Circle}, x...) = HyperSphere(x...)

origin(s::HyperSphere) = s.center
radius(s::HyperSphere) = s.r
