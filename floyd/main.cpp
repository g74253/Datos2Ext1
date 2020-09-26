
#include <bits/stdc++.h>
using namespace std;

#define MAXN 100
const int INF = 1e7;

int dis[MAXN][MAXN];
int Next[MAXN][MAXN];

void initialise(int V,
                vector<vector<int> >& graph)
{
    for (int i = 0; i < V; i++) {
        for (int j = 0; j < V; j++) {
            dis[i][j] = graph[i][j];

            if (graph[i][j] == INF)
                Next[i][j] = -1;
            else
                Next[i][j] = j;
        }
    }
}

std::string constructPath(int u,
                          int v)
{
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

void floydWarshall(int V)
{
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


void printPath(vector<int>& path)
{
    int n = path.size();
    for (int i = 0; i < n - 1; i++)
        cout << path[i] << " -> ";
    cout << path[n - 1] << endl;
}

int main()
{

    int V = 4;
    vector<vector<int> > graph
            = {  {0, 4, 7, INF},
                 {INF, 0, 2, INF},
                 {INF, INF, 0, 5},
                 {INF, INF, INF, 0}};


    initialise(V, graph);


    floydWarshall(V);
  

    return 0;
}
