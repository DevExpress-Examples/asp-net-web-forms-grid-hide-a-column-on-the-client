<!-- default badges list -->
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/E4580)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
[![](https://img.shields.io/badge/💬_Leave_Feedback-feecdd?style=flat-square)](#does-this-example-address-your-development-requirementsobjectives)
<!-- default badges end -->
<!-- default file list -->
*Files to look at*:

* [Default.aspx](./CS/WebSite/Default.aspx) (VB: [Default.aspx](./VB/WebSite/Default.aspx))
* [Default.aspx.cs](./CS/WebSite/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/WebSite/Default.aspx.vb))
* [jquery-1.9.1.min.js](./CS/WebSite/jquery-1.9.1.min.js) (VB: [jquery-1.9.1.min.js](./VB/WebSite/jquery-1.9.1.min.js))
<!-- default file list end -->
# ASPxGridView - How to hide a grid column on the client side without making a round-trip to the server


<p>This example demonstrates how to hide a grid column on the client side without making a round-trip to the server.</p><br />
<p>To accomplish this task, apply a dummy CSS class ('unitPriceColumn') to all column cells (header, data, edit, footer, group footer, and filter cells) in markup. Then, to show/hide these cells, just specify their <a href="http://www.w3schools.com/cssref/pr_class_display.asp"><u>'display'</u></a> style. Set it to the 'none' value to hide cells and to the 'table-cell' value to show cells. To specify a cell display style, I used a jQuerry CSS selector (using the 'unitPriceColumn' CSS class).</p>

<br/>


<!-- feedback -->
## Does this example address your development requirements/objectives?

[<img src="https://www.devexpress.com/support/examples/i/yes-button.svg"/>](https://www.devexpress.com/support/examples/survey.xml?utm_source=github&utm_campaign=asp-net-web-forms-grid-hide-a-column-on-the-client&~~~was_helpful=yes) [<img src="https://www.devexpress.com/support/examples/i/no-button.svg"/>](https://www.devexpress.com/support/examples/survey.xml?utm_source=github&utm_campaign=asp-net-web-forms-grid-hide-a-column-on-the-client&~~~was_helpful=no)

(you will be redirected to DevExpress.com to submit your response)
<!-- feedback end -->
