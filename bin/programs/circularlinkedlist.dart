


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
  newnode.next=head;

 }
 tail=newnode; 
}

// display(){
//   Node? temp=head;
//   while(temp!.next!=head){
//     print(temp.data);
//     temp=temp.next;
//   }
// }

display() {
  Node? temp = head;
  if (temp == null) {
    print("List is empty");
    return;
  }
  do {
    print(temp!.data);
    temp = temp.next;
  } while (temp != head);
}




main(){
  addNodeValue(10);
  addNodeValue(20);
  addNodeValue(30);
  display();
}