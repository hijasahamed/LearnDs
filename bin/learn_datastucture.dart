class Node{
  int? data;
  Node? next;
  Node(this.data);
}

Node? head;
Node? tail;

addNode(int data){
  Node newnode=Node(data);
  if(head==null){
    head=newnode;
  }
  else{
    tail!.next=newnode;
  }
  tail=newnode;
}

display(){
  Node? temp=head;
  while(temp!=null){
    print(temp.data);
    temp=temp.next;
  }
}

reverse(){
  Node? prev;
  Node?current=head;
  while(current != null){
    Node? nxt=current.next;
    current.next=prev;
    prev=current;
    current=nxt;
  }
  head=prev;
  display();
}

delete(int data){
  Node? temp=head;
  Node? prev;
  if(temp != null && temp.data==data){
    head=temp.next;
    return;
  }
  while(temp!=null && temp.data!=data){
    prev=temp;
    temp=temp.next;
  }
  if(temp==null){
    return;
  }
  if(temp==tail){
    tail=prev;
    tail!.next=null;
    return;
  }
  prev!.next=temp.next;
  display();
}

insert(nextto,data){
  Node? newnode=Node(data);
  Node? temp=head;
  while(temp!=null && temp.data!=nextto){
    temp=temp.next;
  }
  if(temp==null){
    return;
  }
  if(temp==tail){
    tail!.next=newnode;
    tail=newnode;
    return;
  }
  newnode.next=temp.next;
  temp.next=newnode;
  display();
}

main(){
  addNode(10);
  addNode(20);
  addNode(30);
  display();
  print('After 25');
  insert(20, 25);
  
}