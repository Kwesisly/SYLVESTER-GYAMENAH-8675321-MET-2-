PROGRAM converter
IMPLICIT NONE
REAL, DIMENSION(21) :: temperature
integer :: m
open(unit=50,file='AIR-TEMPERATURE.CSV',status='old')
print"('Temperature (k)')"
do m = 1, 20
read(50, *) temperature(m)
temperature(m) = 273.15 + temperature(m)
write(*, '(F6.2, "  k")') temperature
end do
close(50)
end program converter
