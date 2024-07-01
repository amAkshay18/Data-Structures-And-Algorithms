import 'dart:collection';

class Graph {
  late int _vertices;
  late List<List<int>> _adjList;

  Graph(int vertices) {
    _vertices = vertices;
    _adjList = List<List<int>>.generate(vertices, (index) => []);
  }

  void addEdge(int v, int w) {
    _adjList[v].add(w);
  }

  void dfs(int v) {
    List<bool> visitedNodes = List<bool>.filled(_vertices, false);
    // List<int> stack = [];

    void dfsUtil(int v) {
      visitedNodes[v] = true;
      print(v);

      for (int i = 0; i < _adjList[v].length; i++) {
        int adjacentVertex = _adjList[v][i];
        if (!visitedNodes[adjacentVertex]) {
          dfsUtil(adjacentVertex);
        }
      }
    }

    dfsUtil(v);
  }

  void bfs(int v) {
    List<bool> visitedNodes = List<bool>.filled(_vertices, false);
    Queue<int> queue = Queue<int>();

    visitedNodes[v] = true;
    queue.add(v);

    while (queue.isNotEmpty) {
      v = queue.removeFirst();
      print(v);

      for (int i = 0; i < _adjList[v].length; i++) {
        int adjacentVertex = _adjList[v][i];
        if (!visitedNodes[adjacentVertex]) {
          visitedNodes[adjacentVertex] = true;
          queue.add(adjacentVertex);
        }
      }
    }
  }
}

void main() {
  Graph graph = Graph(4);
  graph.addEdge(0, 1);
  graph.addEdge(0, 2);
  graph.addEdge(1, 2);
  graph.addEdge(2, 0);
  graph.addEdge(2, 3);
  graph.addEdge(3, 3);

  print('Depth-First Search (DFS):');
  graph.dfs(2);

  print('\nBreadth-First Search (BFS):');
  graph.bfs(2);
}
