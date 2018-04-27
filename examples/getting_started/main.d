import std.stdio;
import dyaml;

void main()
{
    //Read the input.
    Node root = Loader("input.yaml").load();

    //Display the data read.
    foreach(string word; root["Hello World"])
    {
        writeln(word);
    }
    writeln("The answer is ", root["Answer"].as!int);

    //Dump the loaded document to output.yaml.
    Dumper("output.yaml").dump(root);
}
