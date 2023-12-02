List<string>wordLetters =new(){"one","two","three","four","five","six","seven","eight","nine","ten","eleven","twelve","thirteen","fourteen"};
string source="eightwothree";
foreach (var word in wordLetters)
{
    if  (source.Contains(word))
    {
        Console.WriteLine(word);
    }
}
