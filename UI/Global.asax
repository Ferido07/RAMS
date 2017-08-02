﻿<%@ Application Language="C#" %>
<%@ Import Namespace="WebSite1" %>
<%@ Import Namespace="System.Web.Optimization" %>
<%@ Import Namespace="System.Web.Routing" %>

<script runat="server">

    void Application_Start(object sender, EventArgs e)
    {
        RouteConfig.RegisterRoutes(RouteTable.Routes);
        BundleConfig.RegisterBundles(BundleTable.Bundles);

        ApplicationUser appUser = new ApplicationUser { UserName = "ferid@gmail.com" };
        UsersAndRolesManager usrRoleMngr = new UsersAndRolesManager();
        usrRoleMngr.AddAdmin(appUser, "password");
         
    }

</script>