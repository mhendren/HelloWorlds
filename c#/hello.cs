
using System;

namespace helloworld
{
    public interface ITalkative
    {
        void SayIt(string toSay);
    }

    public class TalkativeConsole : ITalkative
    {
        public void SayIt(string toSay)
        {
            Console.Out.WriteLine(toSay);
        }
    }
    
    public class Talker
    {
        private readonly ITalkative _speaker;
        private readonly string _greeting;
        
        public Talker(string greeting, ITalkative speaker)
        {
            _greeting = greeting;
            _speaker = speaker;
        }

        public void Say(string thing)
        {
            _speaker.SayIt($"{_greeting}, {thing}");
        }
    }

    internal static class Program
    {
        private static void Main(string[] args)
        {
            var talker = new Talker("hello", new TalkativeConsole());
            talker.Say("world");
        }
    }
}
