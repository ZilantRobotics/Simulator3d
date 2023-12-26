namespace Ros
{
    [MessageType("nmea_msgs/Sentence")]
    public struct Sentence
    {
        public Header header;
        public string sentence;
    }
}
