using System;

namespace Assets.Scripts.Com
{
    public class Variable<T>
    {
        public event EventHandler<T> Change;

        public T Value
        {
            get => _value;
            set
            {
                if (Equals(_value, value))
                    return;

                _value = value;
                Change?.Invoke(this, value);
            }
        }

        private T _value;

        public Variable(T value)
        {
            _value = value;
        }
    }
}
