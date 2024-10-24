using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class signIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (IsPostBack)
            {

            }
        }

    }
}
























/*using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class singIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           /* Session["url"] = "https://www.yahoo.com.tw";
            var handler1 = new Handler1();
            handler1.ProcessRequest(Context);*/

/*if (IsPostBack)
{

}
}
protected void Button_Click(object sender, EventArgs e)
{
/*
// 存入session
if (FileUpload1.PostedFile != null)
{
    HttpPostedFile myFile = FileUpload1.PostedFile;
    Session["myFile"] = myFile;
    // Set ImageUrl
    Image1.ImageUrl = "Handler1.ashx";
}
//存入伺服器中
string fileName;
if (FileUpload1.HasFile)
{
    if (FileUpload1.PostedFile.ContentType.IndexOf("image") == -1)
    {
        Message.Text = "檔案型態錯誤!";
        return;
    }
    //取得副檔名
    string Extension = FileUpload1.FileName.Split('.')[FileUpload1.FileName.Split('.').Length - 1];
    //新檔案名稱
    fileName = String.Format("{0:yyyyMMddhhmmsss}.{1}", DateTime.Now, Extension);
    //上傳目錄為/Images/
    FileUpload1.SaveAs(Server.MapPath(String.Format("~/picture/{0}", fileName)));
    //
}
else
{
    Message.Text = "沒有上傳檔案";
    return;
}

}
}
}*/