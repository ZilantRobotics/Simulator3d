using System;

namespace Assets.Scripts.Injection.Views
{
    public interface IFixedUpdatableView
    {
        public event EventHandler OnFixedUpdate;
    }
}
