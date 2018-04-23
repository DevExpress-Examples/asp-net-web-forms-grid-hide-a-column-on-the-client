<%@ Page Language="vb" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v12.2, Version=12.2.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
	Namespace="DevExpress.Web.ASPxGridView" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.v12.2, Version=12.2.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
	Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title></title>
	<script src="jquery-1.9.1.min.js" type="text/javascript">
	</script>
	<script type="text/javascript">
		var unitPriceColumnVisible = true;

		function SetUnitPriceColumnVisibility(visible) {
			unitPriceColumnVisible = visible;

			var disp = visible ? 'table-cell' : 'none';
			$('td.unitPriceColumn').css('display', disp);
		}

		function RestoreUnitPriceColumnVisibility() {
			SetUnitPriceColumnVisibility(unitPriceColumnVisible);
		}


		//Event handlers
		function gvProducts_Init(s, e) {
			RestoreUnitPriceColumnVisibility();
		}

		function gvProducts_EndCallback(s, e) {
			RestoreUnitPriceColumnVisibility();
		}

		function cbUnitPrice_Init(s, e) {
			s.SetValue(unitPriceColumnVisible);
		}

		function cbUnitPrice_CheckedChanged(s, e) {
			SetUnitPriceColumnVisibility(s.GetValue());
		}
	</script>
</head>
<body>
	<form id="form1" runat="server">
	<div>
		<dx:ASPxGridView ID="gvProducts" runat="server" AutoGenerateColumns="False" DataSourceID="dsProducts"
			KeyFieldName="ProductID">
			<Columns>
				<dx:GridViewCommandColumn VisibleIndex="0">
					<EditButton Visible="True">
					</EditButton>
				</dx:GridViewCommandColumn>
				<dx:GridViewDataTextColumn FieldName="ProductID" ReadOnly="True" VisibleIndex="1">
					<EditFormSettings Visible="False" />
				</dx:GridViewDataTextColumn>
				<dx:GridViewDataTextColumn FieldName="ProductName" VisibleIndex="2">
				</dx:GridViewDataTextColumn>
				<dx:GridViewDataComboBoxColumn FieldName="CategoryID" VisibleIndex="3" Caption="Category" GroupIndex="0">
					<PropertiesComboBox DataSourceID="dsCategories" ValueType="System.Int32" ValueField="CategoryID" TextField="CategoryName">
					</PropertiesComboBox>
				</dx:GridViewDataComboBoxColumn>
				<dx:GridViewDataTextColumn FieldName="UnitPrice" VisibleIndex="4">
					<HeaderStyle CssClass="unitPriceColumn" />
					<EditCellStyle CssClass="unitPriceColumn" />
					<CellStyle CssClass="unitPriceColumn" />
					<FilterCellStyle CssClass="unitPriceColumn" />
					<FooterCellStyle CssClass="unitPriceColumn" />
					<GroupFooterCellStyle CssClass="unitPriceColumn" />
				</dx:GridViewDataTextColumn>
				<dx:GridViewDataCheckColumn FieldName="Discontinued" VisibleIndex="5">
				</dx:GridViewDataCheckColumn>
			</Columns>
			<TotalSummary>
				<dx:ASPxSummaryItem FieldName="UnitPrice" SummaryType="Sum" ShowInColumn="UnitPrice" />
			</TotalSummary>
			<GroupSummary>
				<dx:ASPxSummaryItem FieldName="UnitPrice" SummaryType="Sum" ShowInGroupFooterColumn="UnitPrice" />
			</GroupSummary>
			<Settings ShowFilterRow="true" ShowFooter="true" ShowGroupFooter="VisibleAlways" />
			<SettingsBehavior AutoExpandAllGroups="true" />
			<SettingsEditing Mode="Inline" />
			<ClientSideEvents Init="gvProducts_Init" EndCallback="gvProducts_EndCallback" />
		</dx:ASPxGridView>
		<dx:ASPxCheckBox ID="cbUnitPrice" Text="Unit Price Column" runat="server">
			<ClientSideEvents Init="cbUnitPrice_Init" CheckedChanged="cbUnitPrice_CheckedChanged" />
		</dx:ASPxCheckBox>

		<asp:AccessDataSource ID="dsProducts" runat="server" DataFile="~/App_Data/nwind.mdb"
			SelectCommand="SELECT [ProductID], [ProductName], [CategoryID], [UnitPrice], [Discontinued] FROM [Products]"

			UpdateCommand="UPDATE [Products] SET [ProductName] = ?, [UnitPrice] = ?, [Discontinued] = ? WHERE [ProductID] = ?" 
			onupdating="dsProducts_Updating">
			<UpdateParameters>
				<asp:Parameter Name="ProductName" Type="String" />
				<asp:Parameter Name="UnitPrice" Type="Decimal" />
				<asp:Parameter Name="Discontinued" Type="Boolean" />
				<asp:Parameter Name="ProductID" Type="Int32" />
			</UpdateParameters>
		</asp:AccessDataSource>
		<asp:AccessDataSource ID="dsCategories" runat="server" 
			DataFile="~/App_Data/nwind.mdb" 
			SelectCommand="SELECT [CategoryID], [CategoryName] FROM [Categories]">
		</asp:AccessDataSource>
	</div>
	</form>
</body>
</html>