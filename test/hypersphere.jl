context("HyperSphere") do
context("constructors and accessors") do
    @fact Sphere(Point(0,0,0), 4) --> HyperSphere{3,Int}(Point{3,Int}((0,0,0)),4)
    c = Circle(Point(0,0), 1)
    @fact c --> HyperSphere(Point(0,0), 1)
    @fact origin(c) --> Point(0,0)
    @fact radius(c) --> 1
    @fact isinside(c, 1, 2) --> false
    @fact isinside(c, 0.5, 0.5) --> true

    centered_rect = centered(HyperSphere)
    @fact centered_rect --> HyperSphere{3,Float32}(Point3f0(0), 1f0)
    centered_rect = centered(HyperSphere{2})
    @fact centered_rect --> HyperSphere{2,Float32}(Point2f0(0),1f0)

    centered_rect = centered(HyperSphere{2, Float64})
    @fact centered_rect --> HyperSphere{2,Float64}(Point(0.,0.), 1.)

    centered_rect = centered(HyperSphere{3, Float32})
    @fact centered_rect --> HyperSphere{3,Float32}(Point3f0(0), 1f0)
end

context("volume") do
    s = Sphere(Point(0,0,0), 2)
    c = Circle(Point(0,1), 3)
    @fact volume(s) --> 4*pi*8/3
    @fact volume(c) --> pi*9
end
end

