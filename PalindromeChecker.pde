public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  //your code here
  String a = word.toLowerCase();
  String b = new String();
  for (int i = 0; i<a.length(); i++)
    if (a.substring(i,i+1).equals(" ") == false)
      b += a.substring(i,i+1);
  String c = new String();
  for (int i = 0; i < b.length(); i++)
    if (Character.isLetter(b.charAt(i)))
      c += b.charAt(i);
  if(c.equals(reverse(c)))
    return true;
  else
    return false;
}
public String reverse(String str)
{
    String news = new String();
    //your code here
    for (int i = str.length(); i>0; i--)
    {
      news += str.substring(i-1,i);
    }
    return news;
}


