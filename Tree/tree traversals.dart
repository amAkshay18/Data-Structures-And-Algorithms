class TreeNode<T> {
  T value;
  TreeNode<T>? left;
  TreeNode<T>? right;

  TreeNode(this.value);
}

void preOrderTraversal<T>(TreeNode<T>? root) {
  if (root == null) return;

  print(root.value); // Process current node
  preOrderTraversal(root.left); // Traverse left subtree
  preOrderTraversal(root.right); // Traverse right subtree
}

void inOrderTraversal<T>(TreeNode<T>? root) {
  if (root == null) return;

  inOrderTraversal(root.left); // Traverse left subtree
  print(root.value); // Process current node
  inOrderTraversal(root.right); // Traverse right subtree
}

void postOrderTraversal<T>(TreeNode<T>? root) {
  if (root == null) return;

  postOrderTraversal(root.left); // Traverse left subtree
  postOrderTraversal(root.right); // Traverse right subtree
  print(root.value); // Process current node
}

void main() {
  // Example usage:
  TreeNode<int> root = TreeNode(10);
  root.left = TreeNode(5);
  root.right = TreeNode(15);
  root.left!.left = TreeNode(3);
  root.left!.right = TreeNode(7);

  print('Pre-order traversal:');
  preOrderTraversal(root);

  print('\nIn-order traversal:');
  inOrderTraversal(root);

  print('\nPost-order traversal:');
  postOrderTraversal(root);
}
