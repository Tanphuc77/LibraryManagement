using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Principal;
using System.Web;
using System.Web.Mvc;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Security;

namespace LibraryManagement
{
    public class MvcApplication : System.Web.HttpApplication
    {
        protected void Application_Start()
        {
            AreaRegistration.RegisterAllAreas();
            FilterConfig.RegisterGlobalFilters(GlobalFilters.Filters);
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);
        }
        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {
            var UserCookie = Context.Request.Cookies[FormsAuthentication.FormsCookieName];
            if (UserCookie != null)
            {
                var authTicket = FormsAuthentication.Decrypt(UserCookie.Value);
                var authority = authTicket.UserData.Split(new Char[] { ',' });
                var userPrincipal = new GenericPrincipal(new GenericIdentity(authTicket.Name), authority);
                Context.User = userPrincipal;
            }
        }
    }
}
