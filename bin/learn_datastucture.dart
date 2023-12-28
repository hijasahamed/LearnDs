class Node{
  int? data;
  Node? next;
  Node(this.data);
}

Node? head;
Node? tail;

addData(int data){
  Node newnode=Node(data);
  if(head==null){
    head = newnode;
  }
  else{
    tail!.next=newnode;
  }
  tail=newnode;
}

display(){
  Node? temp=head;
  if(temp==null){
    print('No values in the Lists');
  }
  while(temp !=null){
    print(temp.data);
    temp=temp.next;
  }
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
  addData(6);
  addData(10);
  addData(5);
  addData(5);
  addData(5);
  addData(8);
  addData(2); 
  display();
  print('After deleting duplicate');
  removedupli();
  display();
}