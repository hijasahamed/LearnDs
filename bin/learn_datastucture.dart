class Node{
  String? data;
  Node? next;
  Node? prev;
  Node(this.data);
}

Node? head;
Node? tail;

addNodeData(String data){
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