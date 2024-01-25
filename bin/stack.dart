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
    print('stack underflow');
    return;
  }
  top=top!.next;
  display();
}

middle(){
  if(top==null){
    return;
  }
  Node? slow=top;
  Node? fast=top;

  while(fast!=null && fast.next!=null){
    slow=slow!.next;
    fast=fast.next!.next;
  }
  print(slow!.data);
}

display(){
  Node? current=top;
  while(current!=null){
    print(current.data);
    current=current.next;
  } 
}


void main(){
  push(10);
  push(20);
  push(30);
  push(40);
  display();
  print('after pop method called');
  pop();
  print('2nd pop');
  pop();
}
