using System.Collections.Generic;
using System.Linq;

namespace Assets.Scripts.Agent.Configuration
{
    public static class ConfigurationHelper
    {
        public static void MapByName<C, E>(IEnumerable<C> configurations, IEnumerable<E> entities) where C : INamedConfiguration where E : IConfigurableEntity<C>, INamedEntity
        {
            if (configurations == null || entities == null)
            {
                return;
            }
            foreach (var configuration in configurations)
            {
                if (configuration == null)
                {
                    continue;
                }
                var entity = entities.FirstOrDefault(e => e != null && e.Name == configuration.Name);
                if (entity == null)
                {
                    continue;
                }
                entity.Configuration = configuration;
            }
        }
    }
}
