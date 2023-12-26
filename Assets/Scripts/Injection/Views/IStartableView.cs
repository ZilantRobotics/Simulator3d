using System;

namespace Assets.Scripts.Injection.Views
{
    public interface IStartableView
    {
        public event EventHandler OnStart;
    }
}
