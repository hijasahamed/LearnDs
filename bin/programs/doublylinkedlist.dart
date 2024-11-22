class Node{
  int? data;
  Node? next;
  Node? prev;
  Node(this.data);
}

Node? head,tail;

addNode(int data){
  Node newnode=Node(data);
  if(head==null){
    head=newnode;
  }
  else{
    tail!.next=newnode;
    newnode.prev=tail;
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

displayReverse(){
  Node? temp=tail;
  while(temp !=null){
    print(temp.data);
    temp=temp.prev;
  }
}

delete(int data){
  Node? temp=head,prev;
  if(temp!=null&&temp.data==data){
    head=temp.next;
    return;
  }
  while(temp!=null&&temp.data!=data){
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
}

insertnext(int nextTo,data){
  Node newnode=Node(data);
  Node? temp=head;
  while(temp!=null && temp.data!=nextTo){
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
}

insertbehind(int behindTo,data){
  Node? newnode=Node(data);
  Node? temp=head,prev;
  while(temp!=null&&temp.data!=behindTo){
    prev=temp;
    temp=temp.next;
  }
  if(temp==null){
    return;
  }
  // newnode.next=prev!.next;
  // prev.next=newnode;
  newnode.next=temp;
  prev!.next=newnode;
}

removedupli(){
  Node? current =head;
  while(current!=null){
    Node? nxt=current.next;
    while(nxt!=null && nxt.data==current.data){
      nxt=nxt.next;
    }
    current.next=nxt;
    if(nxt==tail&&current.data==nxt!.data){
      tail=current;
      tail!.next=null;
    }
    current=nxt;
  }
}

void main(){
  addNode(100);
  addNode(200);
  addNode(300);
  addNode(400);
  addNode(500);
  print('values in the list');
  display();
  print('after behind inserting 400 ');
  insertbehind(400,350);
  display();
}