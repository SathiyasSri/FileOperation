using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FileOperation
{
    public partial class FileView : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.Form.Enctype = "multipart/form-data";
            if (!IsPostBack)
            {
                GetUploadedFiles();
            }
        }
        private void GetUploadedFiles()
        {
           using (FilesEntities fdb = new FilesEntities())
            {
                DataGridView1.DataSource = fdb.Filedbs.ToList();
                DataGridView1.DataBind();
            }
        }
        protected void DataGridView_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "DownloadFile")
            {
                int File_ID = Convert.ToInt32(e.CommandArgument.ToString());
                using (FilesEntities fdb = new FilesEntities())
                {
                    var File = fdb.Filedbs.Where(f => f.FileId.Equals(File_ID)).FirstOrDefault();
                    if (File != null)
                    {
                        Response.ContentType = File.ContentType;
                        Response.AddHeader("content-disposition", "attachment; filename=" + File.FileName);
                        Response.BinaryWrite(File.Filecontent);
                        Response.Flush();
                        Response.End();
                    }
                }
            }
        }

    }
}