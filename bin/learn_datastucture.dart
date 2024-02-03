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

pop(){
  if(top==null){
    return;
  }
  top=top?.next;
}

display(){
  Node? current=top;
  while(current!=null){
    print(current.data);
    current=current.next;
  } 
}

delete(int data){
  Node? temp=top;
  Node? prev;
  while(temp!=null && temp.data !=data){
    prev=temp;
    temp=temp.next;
  }
  prev?.next=temp?.next;
  display();
}


main(){
  push(10);
  push(20);
  push(30);
  push(40);
  display();
  print('after delete');
  delete(30);
}