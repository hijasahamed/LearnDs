
class Node{
  int? data;
  Node? next;
  Node(this.data);
}

Node? head;
Node? tail;

addNodeValue(int data){
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



main(){
  addNodeValue(10);
  addNodeValue(20);
  addNodeValue(30);
}