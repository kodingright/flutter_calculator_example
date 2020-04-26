class Compute {
  // static final RegExp regex = RegExp(r'[+-*\/]');
  static String str = '0';

  static void add(String val) {
    if(str.compareTo('0') == 0){
      str = val;
    }else{
      str += val;
    }
  }

  static void clear(){
    str = '0';
  }

  static void delete(){
    if(str.compareTo('0') != 0){
      String temp = str.substring(0, str.length-1);      
      str = temp == '' ? str = '0' : str = temp;
    }
  }

  static String compute(){
    List<String> lst = [];
    double result = 0;
    int start = 0;
    for(int i = 0; i<str.length; i++){
      if(str[i].compareTo('+') == 0){
        lst.add(str.substring(start, i));
        lst.add(str[i]);
        start = i+1;
      }else if(str[i].compareTo('-') == 0){
        lst.add(str.substring(start, i));
        lst.add(str[i]);
        start = i+1;
      }else if(str[i].compareTo('*') == 0){
        lst.add(str.substring(start, i));
        lst.add(str[i]);
        start = i+1;
      }else if(str[i].compareTo('/') == 0){
        lst.add(str.substring(start, i));
        lst.add(str[i]);
        start = i+1;
      }
    }
    if(start<str.length){
      lst.add(str.substring(start, str.length));
    }
    for(int i=0; i<lst.length; i++){
      if(i==0){
        result = double.parse(lst[i]);
      }else if(i > 0 && double.tryParse(lst[i])!=null){
        if(lst[i-1].compareTo('*') == 0){
          result *= double.parse(lst[i]);
        }else if(lst[i-1].compareTo('/') == 0){
          result /= double.parse(lst[i]);
        }else if(lst[i-1].compareTo('+') == 0){
          result += double.parse(lst[i]);
        }else if(lst[i-1].compareTo('-') == 0){
          result -= double.parse(lst[i]);
        }else{
          return "ERROR";
        }
      }
    }
    return (result-result.truncate()) == 0 ? result.truncate().toString() : result.toString();
  }
}