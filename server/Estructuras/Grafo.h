
#ifndef EXTRACLASE1_GRAFO_H
#define EXTRACLASE1_GRAFO_H

#define MAXV 100
#define oo 0x3f3f3f3f
#include <queue>
#include <utility>
#include <vector>
#include <iostream>
#include<string>
#include <bits/stdc++.h>
using namespace std;
#define MAXN 100
const int INF = 1e7;

using namespace std;

/// Grafo: clase grafo
class Grafo {
    int dis[MAXN][MAXN];
    int Next[MAXN][MAXN];
    int V = 4;
    vector<vector<int> > graph
            = {  {0, 4, 7, INF},
                 {INF, 0, 2, INF},
                 {INF, INF, 0, 5},
                 {INF, INF, INF, 0}};

public:
    void initialise(int V);
    std::string constructPath(int u,int v);
    void floydWarshall(int V);


};


#endif //EXTRACLASE1_GRAFO_H
