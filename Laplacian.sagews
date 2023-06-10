︠60e3bbb7-1677-4fe9-af23-c63165be50c0︠
#Example 1: A tree graph 
A = matrix([[-1,1,0,0,0,0], [0, -1, 1, 0, 0, 0], [0, 0, -1, 1, 0, 0], [0, 0, 0, -1, 1, 0], [0, 0, 0, 0, -1, 1]]) 
Graph(A.transpose()).show()
︡b4c62434-4a01-48a2-a719-c36d89dacc9a︡{"file":{"filename":"/tmp/tmp0dhcdd3x/tmp_twrg4ch7.svg","show":true,"text":null,"uuid":"2b85fc6d-3cdb-4898-aaca-6b8c1bb92407"},"once":false}︡{"done":true}
︠ed489be5-90be-4a7f-b3a8-7b92a167bc64s︠
L = A.transpose() * A
det(L[1:L.nrows(),1:L.ncols()])
︡a55fc811-dd8e-4e5c-a5c8-cf11e2fae508︡{"stdout":"1\n"}︡{"done":true}
︠47058b41-d639-409a-82b9-db419dc5f75c︠
#Example 2: A cyclic graph 
A = matrix([[-1,1,0,0,0,0],[0,-1,1,0,0,0],[0,0,-1,1,0,0],[0,0,0,-1,1,0],[0,0,0,0,-1,1],[-1,0,0,0,0,1]])
Graph(A.transpose()).show()
︡99a1cef2-0f77-4bf6-9a4d-3da6b23d6f26︡{"file":{"filename":"/tmp/tmp0dhcdd3x/tmp_5rs_uwkr.svg","show":true,"text":null,"uuid":"35dafd4c-8e00-4310-9dcb-5d516895551e"},"once":false}︡{"done":true}
︠22ebb388-68e3-417b-8ab8-7618e050c5aes︠
L = A.transpose() * A
det(L[1:L.nrows(),1:L.ncols()])
︡f84b90b4-1549-46c7-8f19-84fb6bed8d8e︡{"stdout":"6\n"}︡{"done":true}
︠6e309af8-9a89-4acc-96e9-95900c568047︠
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
︡8dbed9c9-b472-4bb6-b524-17eb8981decc︡{"done":true}
︠5eb145e0-6077-4a4e-bc49-953a4111312a︠
#Example 3: a random connected graph
Z = randomIncidenceMatrix(10, .5)  
︡c7968261-4344-44f0-a834-75f3c268fb10︡{"file":{"filename":"/tmp/tmp0dhcdd3x/tmp_aizi1wvj.svg","show":true,"text":null,"uuid":"76e5d383-9f87-4de6-99b5-018dd32fd167"},"once":false}︡{"done":true}
︠9d367558-690b-44fe-825c-bab12ae80b68s︠
L = Z.transpose() * Z
det(L[1:L.nrows(),1:L.ncols()])
︡07b14dc0-8fc7-41f6-ac56-aadf9d32b127︡{"stdout":"39456\n"}︡{"done":true}
︠61d477c9-7524-4b4e-b11e-aecd5ecdb47f︠
#Example 4: A complete graph 
Z = randomIncidenceMatrix(10, 1)  
︡4bc4326c-9ae7-406d-bb8e-26af9746ae70︡{"file":{"filename":"/tmp/tmp0dhcdd3x/tmp_z65rvha5.svg","show":true,"text":null,"uuid":"c00bdf96-aa9d-40d7-a318-d9fa66d10788"},"once":false}︡{"done":true}
︠bf97f3f2-a1c3-4851-998d-976765db333as︠
L = Z.transpose() * Z
det(L[1:L.nrows(),1:L.ncols()])
︡1886ecfe-ad0a-4eaf-94fb-d0f65cc87dd1︡{"stdout":"100000000\n"}︡{"done":true}









