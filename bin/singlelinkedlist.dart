class Node{
  int? data;
  Node? next;
  Node(this.data);
}
Node? head,tail;

addData(int data){
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
  if(head==null){
    print('no value in node');
  }
  Node? temp=head;
  while(temp!=null){
    print(temp.data);
    temp=temp.next;
  }
}

delete(int data){
  Node? temp=head,prev;
  if(temp!=null && temp.data==data){
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
    tail==prev;
    tail!.next=null;
    return;
  }
  prev!.next=temp.next;
}

insert(int nextTo,data){
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

void main(){
  print('values in the list');
  addData(50);
  addData(100);
  addData(150);
  addData(200);
  display();
  print('after delete');
  delete(150);
  display();
  print('after adding new values');
  insert(200, 250);
  display();
}
