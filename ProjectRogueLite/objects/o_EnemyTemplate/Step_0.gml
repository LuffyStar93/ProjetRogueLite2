var cosx = dcos(point_direction(x, y, other.x, other.y))
var siny = dsin(point_direction(x, y, other.x, other.y))

if place_free(x+cosx,y+siny) 
{
x -= dcos(point_direction(x, y, other.x, other.y))
y += dsin(point_direction(x, y, other.x, other.y))
}