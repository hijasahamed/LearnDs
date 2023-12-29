class Node{
  int? data;
  Node? next;
  Node(this.data);
}

Node? head;
Node? tail;

addNodeData(int data){
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
  if(temp==null){
    print('No values in the List');
  }
  while(temp !=null){
    print(temp.data);
    temp=temp.next;
  }
}

removeduplicates(){
  Node? current=head;
  while(current!=null){
    Node? nxt=current.next;
    while(nxt!=null&&nxt.data==current.data){
      nxt=nxt.next;
    }
    current.next=nxt;
  }
}

void main(){
  addNodeData(1000);
  display();
}