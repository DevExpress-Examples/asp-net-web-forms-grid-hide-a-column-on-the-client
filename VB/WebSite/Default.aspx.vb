Imports System
Imports System.Collections.Generic
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls

Partial Public Class _Default
	Inherits System.Web.UI.Page

	Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)
	End Sub
	Protected Sub dsProducts_Updating(ByVal sender As Object, ByVal e As SqlDataSourceCommandEventArgs)
		'Remove the next line to enable data updating
		Throw New Exception("Data updating is not allowed in examples.")
	End Sub
End Class