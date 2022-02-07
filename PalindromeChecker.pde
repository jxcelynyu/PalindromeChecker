public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  System.out.println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      System.out.println(lines[i] + " IS a palindrome.");
    }
    else
    {
      System.out.println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
String x = reverse(onlyLetters(noSpaces(noCapitals(word))));
String y = onlyLetters(noSpaces(noCapitals(word)));
  if(x.equals(y) == true)
    return true;
  return false;
}


public String reverse(String str)
{
  String sNew = new String();
  for(int x = str.length(); x > 0; x--){
    sNew += str.substring(x-1, x);
  } 
  return sNew;
}

public String noCapitals(String sWord){
  String sNew = new String();
    sNew = sWord.toLowerCase();
  return sNew;
}

public String noSpaces(String sWord){
  String sNew = new String();
  for(int x = 0; x < sWord.length(); x++){
    if(sWord.substring(x,x+1).equals(" ") != true){
      sNew += sWord.substring(x, x+1);
    }
  }
  return sNew;
}

public String onlyLetters(String sString){
  String sNew = new String();
  for(int x = 0; x < sString.length(); x++){
    if(Character.isLetter(sString.charAt(x)) == true){
      sNew += sString.substring(x, x+1);
    }
  }
  return sNew;
}
