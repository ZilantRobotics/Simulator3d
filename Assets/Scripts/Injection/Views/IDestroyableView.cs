using System;

namespace Assets.Scripts.Injection.Views
{
    public interface IDestroyableView
    {
        public event EventHandler OnDestroyView;
    }
}
