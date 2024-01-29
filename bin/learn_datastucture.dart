class Node{
  int? data;
  Node? next;
  Node(this.data);
}

Node? top;

push(int data){
  Node newnode=Node(data);
  if(top==null){
    top=newnode;
  }
  else{
    newnode.next=top;
    top=newnode;
  }
}

display(){
  Node? current=top;
  while(current!=null){
    print(current.data);
    current=current.next;
  }
}

displayreverse(Node? curr){
  if(curr==null){
    return;
  }
  displayreverse(curr.next);
  print(curr.data);
}


main(){
  push(10);
  push(20);
  push(30);
  push(40);
  push(50);
  push(60);
  display();
  print("Stack in reverse order:");
  displayreverse(top);
}