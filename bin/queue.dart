class Node{
  int ? data;
  Node? next;
  Node(this.data);
}

Node? front;
Node? rear;

enqueue(int data){
  Node newnode =Node(data);
   if(rear==null){
    front=rear=newnode;
    return;
   }
   rear!.next=newnode;
   rear=newnode;
}

dequeue(){
  if(front==null){
    print('the queue is empty');
  }
  front=front!.next;
  if(front==null){
    rear=null;
  }
  display();
}

display(){
  Node? current = front;
  if(current==null){
    print('empty q');
  }
  while(current!=null){
    print(current.data);
    current=current.next;
  }
}

void main(){
  enqueue(10);
  enqueue(20);
  enqueue(30);
  enqueue(40);
  display();
  print('after dq');
  dequeue();
}