class Node{
  int? data;
  Node? next;
  Node(this.data);
}

Node? head;
Node? tail;

addNode(int data){
  Node newNode = Node(data);
  if(head == null){
    head = newNode;
  }else{
    tail!.next = newNode;
  }
  tail = newNode;
}

displayNodes(){
  if(head == null){
    print('No Nodes');
  }
  Node? temp = head;
  while(temp!= null){
    print(temp.data);
    temp = temp.next;
  }
}


void main(){
  addNode(10);
  addNode(20);
  addNode(30);
  displayNodes();
}