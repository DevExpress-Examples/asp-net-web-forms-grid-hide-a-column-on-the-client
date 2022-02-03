<!-- default badges list -->
![](https://img.shields.io/endpoint?url=https://codecentral.devexpress.com/api/v1/VersionRange/128534364/15.1.3%2B)
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/E4580)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
<!-- default badges end -->
# Grid View for ASP.NET Web Forms - How to hide a grid column at the client
<!-- run online -->
**[[Run Online]](https://codecentral.devexpress.com/e4580/)**
<!-- run online end -->

This example demonstrates how to change the visibility of the [Grid View](https://docs.devexpress.com/AspNet/5823/components/grid-view)'s [column](https://docs.devexpress.com/AspNet/3691/components/grid-view/concepts/data-representation-basics/columns) at the client without making a round-trip to the server.

## Overview

Follow the steps below to change a [column](https://docs.devexpress.com/AspNet/3691/components/grid-view/concepts/data-representation-basics/columns)'s visibility at the client.

### 1 Apply a custom CSS class to all cells of a column

A column can include the following cells:

* [Column Header](https://docs.devexpress.com/AspNet/3669/components/grid-view/visual-elements/column-header)
* [Edit Cell](https://docs.devexpress.com/AspNet/3680/components/grid-view/visual-elements/edit-form)
* [Data Cell](https://docs.devexpress.com/AspNet/3670/components/grid-view/visual-elements/data-cell)
* [Filter Row Cell](https://docs.devexpress.com/AspNet/3684/components/grid-view/visual-elements/filter-row)
* [Footer Cell](https://docs.devexpress.com/AspNet/3683/components/grid-view/visual-elements/footer-cell)
* [Group Footer Cell](https://docs.devexpress.com/AspNet/3815/components/grid-view/visual-elements/group-footer)

Apply your custom CSS style to the [CssClass](https://docs.microsoft.com/en-us/dotnet/api/system.web.ui.webcontrols.style.cssclass?view=netframework-4.8#System_Web_UI_WebControls_Style_CssClass) property of every cell in a column:

```aspx
<dx:ASPxGridView ID="gvProducts" runat="server" AutoGenerateColumns="False" DataSourceID="dsProducts" KeyFieldName="ProductID">
    <Columns>
        <!-- ... -->
        <dx:GridViewDataTextColumn FieldName="UnitPrice" VisibleIndex="4">
            <HeaderStyle CssClass="unitPriceColumn" />
            <EditCellStyle CssClass="unitPriceColumn" />
            <CellStyle CssClass="unitPriceColumn" />
            <FilterCellStyle CssClass="unitPriceColumn" />
            <FooterCellStyle CssClass="unitPriceColumn" />
            <GroupFooterCellStyle CssClass="unitPriceColumn" />
        </dx:GridViewDataTextColumn>
    </Columns>
</dx:ASPxGridView>
```

### 2 Specify the display property of the custom CSS class

The CSS class's [display](http://www.w3schools.com/cssref/pr_class_display.asp) property specifies the display behavior of an element. Set this property to `none` to hide the column or set it to `table-cell` to display the column.

In this example, we use a jQuerry CSS selector to change the [display](http://www.w3schools.com/cssref/pr_class_display.asp) property value.

```js
<script type="text/javascript">
    function SetUnitPriceColumnVisibility(visible) {
        unitPriceColumnVisible = visible;
        var disp = visible ? 'table-cell' : 'none';
        $('td.unitPriceColumn').css('display', disp);
    }
</script>
```

<!-- default file list -->

## Files to Look At

* [Default.aspx](./CS/WebSite/Default.aspx) (VB: [Default.aspx](./VB/WebSite/Default.aspx))
* [Default.aspx.cs](./CS/WebSite/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/WebSite/Default.aspx.vb))

<!-- default file list end -->

## Documentation

* [Access Columns](https://docs.devexpress.com/AspNet/3697/components/grid-view/concepts/data-representation-basics/columns/accessing-columns)
* [Grid View Examples](https://docs.devexpress.com/AspNet/3768/components/grid-view/examples)

## More Examples

- [Grid View for ASP.NET Web Forms - How to display the Grid View in the full screen mode (100% width and height)](https://github.com/DevExpress-Examples/grid-in-full-screen-mode-in-aspnet-web-applications)
- [Grid View for ASP.NET Web Forms - How to Delete Selected Rows in a Grid](https://github.com/DevExpress-Examples/aspxgridview-delete-selected-rows)