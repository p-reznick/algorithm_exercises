// a breadth first traversal visits all of the node's childen before proceeding
// to the children of the first child, then the second, etc.  It is implemented
// with a queue.  Note that each node must be marked visited after it's visited
//in order to avoid the risk of an infinite loop inside of a cyclical graph.

function GraphNode(value) {
  this.value = value;
  this.visited = false;
  this.neighbors = [];
}

function breadth_first_traversal(node) {
  node.visited = true;
  const queue = [node];

  while (queue.length !== 0) {
    const current = queue.shift();
    console.log(current.value);

    current.forEach((neighbor) => {
      queue.push(neighbor);
    });
  }
}
