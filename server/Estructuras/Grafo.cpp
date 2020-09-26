
#include "Grafo.h"

/// constructPath: se encarga de buscar y retornar la ruta mas baja del grafo.
/// \param u: (int)nodo inicial
/// \param v: (int)nodo final
/// \return (str)ruta mas corta entre nodos o no se encuentra ruta.

std::string Grafo::constructPath(int u, int v) {
    if (Next[u][v] == -1)
        return "No se encuentra ruta";

    vector<int> path = { u };
    while (u != v) {
        u = Next[u][v];
        path.push_back(u);
    }
    std::stringstream result;
    std::copy(path.begin(),path.end(),std::ostream_iterator<int> (result,"  "));
    return result.str();
}

/// initialise: se encarga de iniciar los nodos en la matriz.
/// \param V: (int)cantidad de nodos.

void Grafo::initialise(int V) {
    for (int i = 0; i < V; i++) {
        for (int j = 0; j < V; j++) {
            dis[i][j] = this->graph[i][j];

            if (this->graph[i][j] == INF)
                Next[i][j] = -1;
            else
                Next[i][j] = j;
        }
    }

}


/// floydWarshall: calcula los pesos segun la ruta mas corta.
/// Parte de este codigo se saco de https://www.geeksforgeeks.org/finding-shortest-path-between-any-two-nodes-using-floyd-warshall-algorithm/
/// \param v: (int)cantidad de nodos.

void Grafo::floydWarshall(int V) {
    for (int k = 0; k < V; k++) {
        for (int i = 0; i < V; i++) {
            for (int j = 0; j < V; j++) {


                if (dis[i][k] == INF
                    || dis[k][j] == INF)
                    continue;

                if (dis[i][j] > dis[i][k]
                                + dis[k][j]) {
                    dis[i][j] = dis[i][k]
                                + dis[k][j];
                    Next[i][j] = Next[i][k];
                }
            }
        }
    }
}
