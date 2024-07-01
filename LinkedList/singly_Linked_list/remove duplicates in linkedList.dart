class Node {
  int data;
  Node? next;

  Node(this.data);
}

class LinkedList {
  Node? head;
  // insert new node
  void insert(int data) {
    Node newNode = Node(data);
    if (head == null) {
      head = newNode;
    } else {
      Node? current = head;
      while (current!.next != null) {
        current = current.next;
      }
      current.next = newNode;
    }
  }

  // remove duplicates
  void removeDuplicates() {
    Node? current = head;
    while (current != null) {
      Node? temp = current;
      while (temp!.next != null) {
        if (current.data == temp.next!.data) {
          temp.next = temp.next!.next;
        } else {
          temp = temp.next;
        }
      }
      current = current.next;
    }
  }

  // display
  void display() {
    Node? current = head;
    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }
}

void main() {
  LinkedList list = LinkedList();
  list.insert(1);
  list.insert(1);
  list.insert(2);
  list.insert(3);
  list.insert(3);
  list.insert(4);
  // list.display();
  list.removeDuplicates();
  list.display();
}
