public with sharing class P0B {


    public static Integer nFibonacci( Integer n ){
        Integer holdOne = 0;
        Integer holdTwo = 1;
        Integer holdThree = 0;
        if(n<2){
            return n;
        }else {
        for (Integer i=2; i<=n; i++){

            holdThree = holdOne + holdTwo;
            holdOne = holdTwo;
            holdTwo = holdThree;
        }
          return holdThree;

    }
    }
    
    public static List<Integer> sortList( List<Integer> intList ) {
        Integer holdNum;
        for(Integer i=0; i<intList.size()-1; i++){
            if(intList[i]>intList[i+1]){
                holdNum=intList[i];
                intList[i]=intList[i+1];
                intList[i+1]=holdNum;
                i=-1;
            }
        }
        return intList;

    }

    public static Integer nFactorial(Integer n){
        Integer total=1;
        for(Integer i=n; i>0; i--){
            total =total*i;
        }


        return total;
    }

    public static List<Integer> rotateLeftNTimes(List<Integer> nList, Integer n){
        Integer count=n;
        while(count>0){
            nList.add(nList.remove(0));
            count--;
        }
        return nList;
    }

    public static Boolean bracketsAreBalanced(String s) {
        List<String> balanceCheck= new List<String>();
        Integer length = s.length();

        List<String> brackets = s.split('');
        for (Integer i=0; i<length; i++){
            System.debug(balanceCheck);
            if(brackets[i]=='(' || brackets[i]=='[' || brackets[i]=='{'){
                balanceCheck.add(brackets[i]);
            }else if(
                    balanceCheck.size()==0 &&
                    (brackets[i]==')'||
                    brackets[i]==']'||
                    brackets[i]=='}')){
                  balanceCheck.add('k');
            }else if(
                    balanceCheck.size()!=0 &&
                    ((balanceCheck[balanceCheck.size()-1]!='('&&brackets[i]==')')||
                    (balanceCheck[balanceCheck.size()-1]!='['&&brackets[i]==']')||
                    (balanceCheck[balanceCheck.size()-1]!='{'&&brackets[i]=='}'))){
                  balanceCheck.add('k');
            }else if(balanceCheck.size()>0){
                if(
                    (balanceCheck[balanceCheck.size()-1]=='('&&brackets[i]==')')||
                    (balanceCheck[balanceCheck.size()-1]=='['&&brackets[i]==']')||
                    (balanceCheck[balanceCheck.size()-1]=='{'&&brackets[i]=='}')){
                    balanceCheck.remove(balanceCheck.size()-1);  
                }
                
            }
      }

        if(balanceCheck.size()>0){
            return false;
        }else{
            return true;
        }
    }

}