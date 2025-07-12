#  Matrix transpose or multiplication

matrix = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
print("Original matrix: ", *matrix, sep = "\n")

# Transpose of a matrix is obtained by interchanging its rows into columns and vice-versa.
# In this case, the number of rows and columns are swapped.
# So, the number of rows in the original matrix becomes the number of columns in the transposed
# matrix and vice versa.
transposed_matrix = [[row[i] for row in matrix] for i in range(len(matrix[0]))]
print("Transposed matrix: ", *transposed_matrix, sep = "\n")

