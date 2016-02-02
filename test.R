#
# Test & Iterative devel. 
#
set.seed(42)
mOrig <- array(rnorm(16), dim=c(4,4))
message("Simple solve() :")
print(solve(mOrig))


m <- makeCacheMatrix(mOrig)
message("First call :")
print( cacheSolve(m) )
message("Second call :")
print( cacheSolve(m) )

message("done  :)")

