using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(RootedInLove.Startup))]
namespace RootedInLove
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
