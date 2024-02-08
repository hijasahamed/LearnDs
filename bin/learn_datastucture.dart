class Node{
  int? data;
  Node? left;
  Node? right;
  Node(this.data);
}

Node? root;

insert(data){
  Node newnode=Node(data);
  Node? currentroot=root;
  if(root==null){
    root=newnode;
    return;
  }
  while(true){
    if(data<currentroot?.data){
     if(currentroot?.left==null){
      currentroot?.left=newnode;
      return;
     }
     else{
      currentroot=currentroot?.left;
     }
    }
    else{
      if(currentroot?.right==null){
        currentroot?.right=newnode;
        return;
      }
      else{
        currentroot=currentroot?.right;
      }
    }
  }
}

// contains(root,data){
//   Node? currentnode=root;
//     if(data == currentnode?.data){
//       return true;
//     }
//     else if(data < currentnode?.data){
//       currentnode=currentnode?.left;
//       contains(currentnode,data);
//     }
//     else{
//       currentnode=currentnode?.right;
//       contains(currentnode,data);
//     }
//   return false;
// }

  contains(data){
  Node? currentnode=root;
  while(currentnode !=null){
    if(data <currentnode.data){
      currentnode=currentnode.left;
    }
    else if(data > currentnode.data){
      currentnode=currentnode.right;
    }
    else{
      return true;
    }
  }
  return false;
}

main(){
  insert(10);
  insert(5);
  insert(20);
  insert(30);
  print(contains(30));
}