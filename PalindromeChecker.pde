public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public boolean palindrome(String sWord)
{
  String cWord = new String();
  for (int i = 0; i < sWord.length(); i++)
  {
    if (Character.isLetter(sWord.charAt(i)))
      cWord += sWord.charAt(i);
  }
  if (reverse(cWord.toLowerCase()).equals(cWord.toLowerCase()))
    return true;
  return false;
}
public String reverse(String str)
{
  String sReverse = new String ();
  int sLast = str.length()-1;
  for (int i = sLast; i >= 0; i--)
  {
    sReverse = sReverse + str.substring(i, i+1);
  }
  return sReverse;
}