using System;

namespace Assets.Scripts.Injection.Views
{
    public interface IUpdatableView
    {
        public event EventHandler OnUpdate;
    }
}
