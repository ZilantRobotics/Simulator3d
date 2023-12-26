using System;

namespace Assets.Scripts.Injection.Views
{
    public interface IDisablableView
    {
        public event EventHandler OnDisableView;
    }
}
