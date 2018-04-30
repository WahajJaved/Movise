<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="DBProject.Search" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>



<asp:Content ID="searchContent" ContentPlaceHolderID="searchPlaceHolder" runat="server">
	<!-- Search Form -->

	<div class="header-search-form ml-auto">
		<form runat="server" action="#" id="searchForm">
			<asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
			<div>
				<asp:TextBox ID="search" runat="server" CssClass="form-control" placeholder="Input Query"></asp:TextBox>
				<asp:Button runat="server" onclick="Search_Click" CssClass="d-none"/>

				<asp:AutoCompleteExtender ID="AutoCompleteExtender1" runat="server" TargetControlID="search" MinimumPrefixLength="1" EnableCaching="true" CompletionSetCount="1" CompletionInterval="200" ServiceMethod='getSearchResults' CompletionListItemCssClass="dropdown-item"></asp:AutoCompleteExtender>
			</div>
		</form>
	</div>
	<!-- Search btn -->
	<div id="searchbtn">
		<img src="img/core-img/search.png" alt="">
	</div>
	
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="mainPlaceHolder" runat="server">

	<%--<asp:Repeater ID="repPeople" runat="server">
		<ItemTemplate>
			<table runat="server">
				<tr>
					<td>Name:</td>
					<td>
						<asp:TextBox ID="txtName" runat="server" Text='<%# Eval("Name") %>' /></td>
				</tr>
				<tr>
					<td>Last Name:</td>
					<td>
						<asp:TextBox ID="txtLastName" runat="server" Text='<%# Eval("LastName") %>' /></td>
				</tr>
				<tr>
					<td>Age:</td>
					<td>
						<asp:TextBox ID="txtAge" runat="server" Text='<%# Eval("Age") %>' /></td>
				</tr>
				<tr>
					<td>Birthdate:</td>
					<td>
						<asp:TextBox ID="txtBirthDate" runat="server" Text='<%# String.Format("{0:d}", Eval("BirthDate")) %>' /></td>
				</tr>
			</table>
		</ItemTemplate>
	</asp:Repeater>--%>

	<a id="imgAnchor" runat="server" href="#">
		<img id="imgSrc" src="14.jpg">
	</a>
	<asp:Repeater runat="server" ID="repPeople" OnItemDataBound="Repeater1_ItemDataBound">
		<ItemTemplate>
			<table class="findList">
				<tbody>
					<tr class="findResult">
						<td class="primary_photo">
							

						</td>
						<td class="result_text">
							<asp:HyperLink runat="server" id="textAnchor" href="(url to movie page)">Ace of Aces </asp:HyperLink> (1982)
							<br /> 
						</td>
					</tr>
				</tbody>
			</table>
	   </ItemTemplate>
	</asp:Repeater>
</asp:Content>
