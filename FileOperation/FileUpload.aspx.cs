using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FileOperation
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.Form.Enctype = "multipart/form-data";
        }
        protected void BtnUploadFile_Click(object sender, EventArgs e)
        {
            HttpFileCollection File_Collection = Request.Files;
            using (FilesEntities fdb = new FilesEntities())
            {
                foreach (string File_Uploader in File_Collection)
                {
                    HttpPostedFile Posted_File = File_Collection[File_Uploader];
                    if (Posted_File.ContentLength > 0)
                    {
                        BinaryReader Binary_Reader = new BinaryReader(Posted_File.InputStream);
                        byte[] File_Buffer = Binary_Reader.ReadBytes(Posted_File.ContentLength);
                        fdb.Filedbs.Add(new Filedb
                        {
                            FileName = Posted_File.FileName,
                            ContentType = Posted_File.ContentType,
                            Extension = Path.GetExtension(Posted_File.FileName),
                            Size = Posted_File.ContentLength,
                            Filecontent = File_Buffer,
                        });
                    }
                }
                fdb.SaveChanges();
            }
        }
    }
}