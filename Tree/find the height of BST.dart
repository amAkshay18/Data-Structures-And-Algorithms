class TreeNode<T> {
  T value;
  TreeNode<T>? left;
  TreeNode<T>? right;

  TreeNode(this.value);
}

int findHeight<T>(TreeNode<T>? root) {
  if (root == null) {
    return 0;
  }

  // Recursively calculate the height of the left and right subtrees
  int leftHeight = findHeight(root.left);
  int rightHeight = findHeight(root.right);

  // Return the maximum height plus 1 (to account for the current level)
  return 1 + (leftHeight > rightHeight ? leftHeight : rightHeight);
}

void main() {
  // Example usage:
  TreeNode<int> root = TreeNode(10);
  root.left = TreeNode(5);
  root.right = TreeNode(15);
  root.left!.left = TreeNode(3);
  root.left!.right = TreeNode(7);

  int treeHeight = findHeight(root);
  print('Height of the binary search tree: $treeHeight');
}
