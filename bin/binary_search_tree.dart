class Node {
  int? data;
  Node? right;
  Node? left;
  Node(this.data);
}

Node? root;

insert( data) {
  Node newnode=Node(data);
  Node? currentnode=root;
  if(root==null){
    root= Node(data);
    return;
  }
  while(true){
    if(data < currentnode?.data){
      if(currentnode?.left == null){
        currentnode?.left=newnode;
        break;
      }
      else{
        currentnode=currentnode?.left;
      }
    }
    else{
      if(currentnode?.right == null){
        currentnode?.right=newnode;
        break;
      }
      else{
        currentnode=currentnode?.right;
      }
    }
  }
}

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
  insert(8);
  insert(11);
  print(contains(10));
}
