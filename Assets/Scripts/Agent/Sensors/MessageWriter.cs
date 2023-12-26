using System;
using System.Collections.Concurrent;
using System.Threading;
using UnityEngine;

namespace Assets.Scripts.Agent.Sensors
{
    public class MessageWriter<T> : IDisposable
    {
        private readonly ConcurrentQueue<T> _queue = new ConcurrentQueue<T>();

        private readonly Sensor _sensor;

        private readonly Comm.Writer<T> _writer;

        private readonly Action<T, double> _writeTimestamp;

        private readonly Thread _thread;

        public MessageWriter(Sensor sensor, Comm.Writer<T> writer, Action<T, double> writeTimestamp)
        {
            _sensor = sensor;
            _writer = writer;
            _writeTimestamp = writeTimestamp;
            _thread = new Thread(Run);
            _thread.Start();
        }

        public void Publish(T message, double timestamp)
        {
            _writeTimestamp(message, timestamp);
            _queue.Enqueue(message);        
        }

        public void Dispose()
        {
            _thread.Abort();
        }

        private void Run()
        {
            var nextTick = DateTime.UtcNow + GetInterval();
            while (true)
            {
                while (DateTime.UtcNow < nextTick)
                {
                    Thread.Sleep(ClampTime(nextTick - DateTime.UtcNow));
                }
                nextTick += GetInterval();

                if (_sensor.IsActive.Value)
                {
                    if (_queue.TryDequeue(out var message))
                    {
                        try
                        {
                            _writer.Publish(message);
                        }
                        catch 
                        {
                            
                        }
                    }
                }
            }
        }

        private TimeSpan ClampTime(TimeSpan timeSpan)
        {
            if (timeSpan < TimeSpan.Zero)
            {
                return TimeSpan.Zero;
            }

            return timeSpan;
        }

        private TimeSpan GetInterval()
        {
            return new TimeSpan(0, 0, 0, 0, Mathf.RoundToInt(1000 / _sensor.Settings.PublishRate));
        }
    }
}
