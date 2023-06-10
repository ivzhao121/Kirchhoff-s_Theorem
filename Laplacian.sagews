#Example 1: A tree graph 
A = matrix([[-1,1,0,0,0,0], [0, -1, 1, 0, 0, 0], [0, 0, -1, 1, 0, 0], [0, 0, 0, -1, 1, 0], [0, 0, 0, 0, -1, 1]]) 
Graph(A.transpose()).show()
L = A.transpose() * A
det(L[1:L.nrows(),1:L.ncols()])

#Example 2: A cyclic graph 
A = matrix([[-1,1,0,0,0,0],[0,-1,1,0,0,0],[0,0,-1,1,0,0],[0,0,0,-1,1,0],[0,0,0,0,-1,1],[-1,0,0,0,0,1]])
Graph(A.transpose()).show()
L = A.transpose() * A
det(L[1:L.nrows(),1:L.ncols()])

#Helper function to create random graphs
def randomIncidenceMatrix(n, p):
    random = graphs.RandomGNP(n,p)
    random.show()
    G = random.incidence_matrix().transpose()
    for i in range(0, G.nrows()):
        t = false
        while (t == false):
            for j in range (0, G.ncols()):
                if ((G[i,j] == 1) & (t == false)):
                    G[i,j]=-1
                    t = true
    return G

#Example 3: a random connected graph
Z = randomIncidenceMatrix(10, .5)  
L = Z.transpose() * Z
det(L[1:L.nrows(),1:L.ncols()])

#Example 4: A complete graph 
Z = randomIncidenceMatrix(10, 1)  
L = Z.transpose() * Z
det(L[1:L.nrows(),1:L.ncols()])









