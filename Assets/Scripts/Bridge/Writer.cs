using System;

namespace Comm
{
    public interface Writer<T>
    {
        void Publish(T message, Action completed = null);
    }
}