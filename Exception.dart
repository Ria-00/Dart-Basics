class BankingException implements Exception{
  String message;

  BankingException(this.message);

  String toString() =>'$message';
}

class Bank{
  int current;

  Bank(this.current);

  void deposit(int a){
    if (a<0) {
      throw BankingException('Negative amount being deposited!!');
    }
    else{
      current+=a;
      print(current);
    }
  }
  void withdraw(int a){
    if (a>current) {
      throw BankingException('Amount greater than current amount!!');
    }
    else{
      current-=a;
      print(current);
    }
  }
}

void main(){
  Bank b1=Bank(5000);
  try {
    b1.deposit(200);
    b1.withdraw(3000);
  } catch (e) {
    print(e);
  }
  
}



// 1. Implement a custom exception handling mechanism for a banking application. The application needs to handle scenarios where a user tries to withdraw an amount greater than their account balance or attempts to deposit a negative amount. Design a solution that includes:

// - Defining a custom exception class named BankingException that extends the Exception class.
// - Implementing methods to withdraw and deposit money in a bank account, ensuring that appropriate exceptions are thrown and caught for invalid withdrawal and deposit operations.
// - Implementing a try-catch block to handle exceptions thrown during withdrawal and deposit operations, and printing meaningful error messages for different types of exceptions.

// 2. You are developing a file processing application in Dart that involves reading data from a text file and performing various operations on the data. The application needs to handle scenarios where the input file is missing or inaccessible, and also deal with any parsing errors that occur while reading the file. Design a solution that includes:

// - Implementing a method to read data from a text file and parse it into a structured format (e.g., list of objects).
// - Handling exceptions such as FileSystemException for missing or inaccessible files and FormatException for parsing errors during file processing.
// - Defining a custom exception class named FileProcessingException that extends the Exception class to represent file processing errors.
// - Implementing a try-catch block to handle exceptions thrown during file processing operations, and rethrowing custom exceptions with additional context information for better error reporting.