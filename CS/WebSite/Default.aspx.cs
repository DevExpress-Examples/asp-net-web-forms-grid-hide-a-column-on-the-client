using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page {
    protected void Page_Load(object sender, EventArgs e) {
    }
    protected void dsProducts_Updating(object sender, SqlDataSourceCommandEventArgs e) {
        //Remove the next line to enable data updating
        throw new Exception("Data updating is not allowed in examples.");
    }
}