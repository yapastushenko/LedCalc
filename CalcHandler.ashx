<%@ WebHandler Language="C#" Class="CalcHandler" %>

using System;
using System.Web;

// Данный обработчик используется в домашнем задании.

public class CalcHandler : IHttpHandler {

    public void ProcessRequest (HttpContext context) {
        System.Threading.Thread.Sleep(1000); // Задержка на 3 секунды.
        context.Response.ContentType = "text/plain";
        try
        {
            int a = Convert.ToInt32(context.Request.Form["a"]);
            int b = Convert.ToInt32(context.Request.Form["b"]);
            int c = Convert.ToInt32(context.Request.Form["c"]);

            context.Response.Write(1000 * (a - b * 3) / c);
        }
        catch
        {
            context.Response.Write(-1);
        }
    }

    public bool IsReusable {
        get {
            return false;
        }
    }

}