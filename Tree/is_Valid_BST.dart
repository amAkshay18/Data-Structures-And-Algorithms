class TreeNode {
  int value;
  TreeNode? left;
  TreeNode? right;
  TreeNode(this.value, [this.left, this.right]);
}

bool isValidBST(TreeNode? node, [int? min, int? max]) {
  if (node == null) return true;
  if ((min != null && node.value <= min) ||
      (max != null && node.value >= max)) {
    return false;
  }
  return isValidBST(node.left, min, node.value) &&
      isValidBST(node.right, node.value, max);
}

void main() {
  // Example usage:
  TreeNode node1 = TreeNode(1);
  TreeNode node3 = TreeNode(3);
  TreeNode node2 = TreeNode(2, node1, node3);
  print(isValidBST(node2)); // Should print: true
  TreeNode node4 = TreeNode(4);
  TreeNode invalidNode =
      TreeNode(2, node4, node3); // 4 is on the left of 2, which is invalid
  print(isValidBST(invalidNode)); // Should print: false
}
