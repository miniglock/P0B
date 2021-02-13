// Use .apex files to store anonymous Apex.
// You can execute anonymous Apex in VS Code by selecting the
//     apex text and running the command:
//     SFDX: Execute Anonymous Apex with Currently Selected Text
// You can also execute the entire file by running the command:
//     SFDX: Execute Anonymous Apex with Editor Contents



string tempvar = 'Enter_your_name_here';
System.debug('Hello World!');
System.debug('My name is ' + tempvar);
System.debug(P0B.nFibonacci(4));
System.debug(P0B.sortList(new List<Integer> {2,4,5,1,3,1}));
System.debug(P0B.nFactorial(4));
System.debug(P0B.rotateLeftNTimes(new List<Integer> {1,2,3}, 2));
System.debug(P0B.bracketsAreBalanced('([{]}])'));