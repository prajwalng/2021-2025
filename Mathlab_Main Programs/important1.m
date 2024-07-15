help matfun
  Matrix functions - numerical linear algebra.
 
  Matrix analysis.
    bandwidth   - Matrix bandwidth.
    isbanded    - Determine whether a matrix has certain bandwidth.
    isdiag      - Determine whether a matrix is diagonal.
    ishermitian - Determine whether a matrix is Hermitian.
    issymmetric - Determine whether a matrix is symmetric.
    istril      - Determine whether a matrix is lower triangular.
    istriu      - Determine whether a matrix is upper triangular.
    norm        - Matrix or vector norm.
    normest     - Estimate the matrix 2-norm.
    rank        - Matrix rank.
    det         - Determinant.
    trace       - Sum of diagonal elements.
    null        - Null space.
    orth        - Orthogonalization.
    rref        - Reduced row echelon form.
    subspace    - Angle between two subspaces.
 
  Linear equations.
    / and /     - Linear equation solution; use "help slash".
    linsolve    - Linear equation solution with extra control.
    inv         - Matrix inverse.
    rcond       - LAPACK reciprocal condition estimator
    cond        - Condition number with respect to inversion.
    condest     - 1-norm condition number estimate.
    normest1    - 1-norm estimate.
    chol        - Cholesky factorization.
    ldl         - Block LDL' factorization.
    lu          - LU factorization.
    qr          - Orthogonal-triangular decomposition.
    pinv        - Pseudoinverse.
    lscov       - Least squares with known covariance.
    sylvester   - Sylvester equation solver.
 
  Eigenvalues and singular values.
    eig         - Eigenvalues and eigenvectors.
    svd         - Singular value decomposition.
    gsvd        - Generalized singular value decomposition.
    eigs        - A few eigenvalues.
    svds        - A few singular values.
    poly        - Characteristic polynomial.
    polyeig     - Polynomial eigenvalue problem.
    condeig     - Condition number with respect to eigenvalues.
    hess        - Hessenberg form.
    schur       - Schur decomposition.
    qz          - QZ factorization for generalized eigenvalues.
    ordschur    - Reordering of eigenvalues in Schur decomposition.
    ordqz       - Reordering of eigenvalues in QZ factorization.
    ordeig      - Eigenvalues of quasitriangular matrices.
 
  Matrix functions.
    expm        - Matrix exponential.
    logm        - Matrix logarithm.
    sqrtm       - Matrix square root.
    funm        - Evaluate general matrix function.
 
  Factorization utilities
    qrdelete    - Delete a column or row from QR factorization.
    qrinsert    - Insert a column or row into QR factorization.
    rsf2csf     - Real block diagonal form to complex diagonal form.
    cdf2rdf     - Complex diagonal form to real block diagonal form.
    balance     - Diagonal scaling to improve eigenvalue accuracy.
    planerot    - Givens plane rotation.
    cholupdate  - rank 1 update to Cholesky factorization.
    qrupdate    - rank 1 update to QR factorization.

    
    
    help slash
 Matrix division.
  \   Backslash or left division.
      A\B is the matrix division of A into B, which is roughly the
      same as INV(A)*B , except it is computed in a different way.
      If A is an N-by-N matrix and B is a column vector with N
      components, or a matrix with several such columns, then
      X = A\B is the solution to the equation A*X = B. A warning
      message is printed if A is badly scaled or nearly 
      singular.  A\EYE(SIZE(A)) produces the inverse of A.
 
      If A is an M-by-N matrix with M < or > N and B is a column
      vector with M components, or a matrix with several such columns,
      then X = A\B is the solution in the least squares sense to the
      under- or overdetermined system of equations A*X = B. The
      effective rank, K, of A is determined from the QR decomposition
      with pivoting. A solution X is computed which has at most K
      nonzero components per column. If K < N this will usually not
      be the same solution as PINV(A)*B.  A\EYE(SIZE(A)) produces a
      generalized inverse of A.
 
  /   Slash or right division.
      B/A is the matrix division of A into B, which is roughly the
      same as B*INV(A) , except it is computed in a different way.
      More precisely, B/A = (A'\B')'. See \.
 
  ./  Array right division.
      B./A denotes element-by-element division.  A and B
      must have the same dimensions unless one is a scalar.
      A scalar can be divided with anything.
 
  .\  Array left division.
      A.\B. denotes element-by-element division.  A and B
      must have the same dimensions unless one is a scalar.
      A scalar can be divided with anything.
