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

findMiddle() {
  if (front == null) {
    print('The queue is empty');
    return;
  }

  Node? slowPointer = front;
  Node? fastPointer = front;

  while (fastPointer != null && fastPointer.next != null) {
    slowPointer = slowPointer!.next;
    fastPointer = fastPointer.next!.next;
  }

  print('Middle element: ${slowPointer!.data}');
}

peek(){
  Node? res=front;
  if(res!=null){
    print('front element is ${res.data}');
  }
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
}