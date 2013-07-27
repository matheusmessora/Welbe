Imports System.Data.Odbc
Imports Conexoes
Imports Funcoes
Imports System.Web.Services

Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then

            If Not IsNumeric(Session("ID_CUSTOMER")) Then
                Response.Redirect("~/Login.aspx", True)
                Exit Sub
            End If

            If Not IsNumeric(Session("book")) Then
                Response.Redirect("~/Choose.aspx", True)
                Exit Sub
            End If

            If Not Session("book") = "1" Then
                Response.Redirect("~/Choose.aspx", True)
                Exit Sub
            End If

            Dim book As Integer = Session("book")
            Dim unit As Integer = Session("unit")
            Dim lesson As Integer = Session("category")

            Dim culture As New Globalization.CultureInfo("en-US")
            'System.Threading.Thread.CurrentThread.CurrentCulture = New Globalization.CultureInfo("en-US")

            litBookName.Text = "Book " & book
            litBookName1.Text = "Book " & book

            If Session("DEMO1") = True Then
                litExpirationDate.Text = Convert.ToDateTime(Session("BOOK" & book & "_DATE")).AddDays(7).ToString("D", culture)
            Else
                litExpirationDate.Text = Convert.ToDateTime(Session("BOOK" & book & "_DATE")).AddMonths(6).ToString("D", culture)
            End If


            litFirstAccess.Text = Convert.ToDateTime(Session("BOOK" & book & "_DATE")).ToString("D", culture)

            If Session("DEMO1") = True Then
                LitRemainingDays.Text = DateDiff(DateInterval.Day, Now, Convert.ToDateTime(Session("BOOK" & book & "_DATE")).AddDays(7))
            Else
                LitRemainingDays.Text = DateDiff(DateInterval.Day, Now, Convert.ToDateTime(Session("BOOK" & book & "_DATE")).AddMonths(6))
            End If

            LitLastAccess.Text = Convert.ToDateTime(Session("LAST_ACCESS_CUSTOMER")).ToString("f", culture)

            Try

                LitHello.Text = "Hello, " & Session("NAME_CUSTOMER").ToString.Substring(0, Session("NAME_CUSTOMER").ToString.IndexOf("")) & "!"
            Catch ex As Exception
                LitHello.Text = "Hello, " & Session("NAME_CUSTOMER").ToString & "!"
            End Try

            LitWhereAmI.Text = "Unit " & GetNumberName(unit) & " - " & GetCategoryName(lesson)

            LitRegistered.Text = Session("NAME_CUSTOMER").ToString
            LitCPF.Text = Session("CPF_CUSTOMER").ToString

            Dim dr As OdbcDataReader = GetDataReader("SELECT * FROM TB_LESSON WHERE book=" & book & " ORDER BY unit ASC, category ASC")

            Dim s As StringBuilder = New StringBuilder

            Dim category As String = ""
            Dim title As String = ""
            Dim locked As Boolean = False

            While dr.Read

                category = GetCategoryName(dr("category"))
                title = "Unit " & GetNumberName(dr("unit")) & " - " & category

                If unit < Convert.ToInt32(dr("unit")) Then
                    locked = True
                ElseIf unit = Convert.ToInt32(dr("unit")) Then
                    If lesson < Convert.ToInt32(dr("category")) Then locked = True
                End If

                s.Append("<li id='l" & dr("id") & "l' class='" & category.ToLower & "'>")

                If category = "Quiz" Then
                    s.Append("<a id='" & GetCategoryName(dr("category")).ToLower & dr("unit").ToString & "' class='prettyPhoto' onclick=""javascript:startClass('" & title & "','" & category.ToLower & "XXX" & dr("unit") & "AAA" & category.ToLower & dr("unit") & "',this);"" title='" & title & "' style='cursor:pointer'>")
                Else
                    s.Append("<a id='" & GetCategoryName(dr("category")).ToLower & dr("unit").ToString & "' class='prettyPhoto' onclick=""javascript:startClass('" & title & "','" & "u" & "XXX" & dr("unit") & "AAA" & category.ToLower.Substring(0, 1) & "',this);"" title='" & title & "' style='cursor:pointer'>")
                End If




                If locked Then s.Append("<span class='locked'>")
                s.Append("<img src='images/thumbs/" & dr("unit") & category.ToLower & ".jpg' width='175' height='122' alt='" & title & "' />")
                If locked Then s.Append("</span>")

                locked = False

                s.Append("</a>")

                s.Append("<div class='information'>")
                s.Append("<h4><b>")
                s.Append("Unit " & GetNumberName(dr("unit")) & "</b> - " & category)
                s.Append("</h4>")
                s.Append("<p>")
                s.Append(dr("description"))
                s.Append("</p></div></li>")

            End While

            dr.Close()

            LitItems.Text = s.ToString()

            If Now.Date > IIf(Session("DEMO1") = True, Convert.ToDateTime(Session("BOOK" & book & "_DATE")).AddDays(7), Convert.ToDateTime(Session("BOOK" & book & "_DATE")).AddMonths(6)) Then
                LitItems.Visible = False
                pnlAcabou.Visible = True
                pnlFraseTopo.Visible = False
            End If

            If Session("DEMO1") = True Then
                DivComprar.Visible = True
                DivComprar.InnerHtml = "<a href='http://www.welbe.com.br/Curso.aspx?key=" & Session("CHAVE") & "'><img src='http://www.welbe.com.br/images/compre.jpg' border='0' /></a>"
                DivComprar2.Visible = True
                DivComprar2.InnerHtml = "<a href='http://www.welbe.com.br/Curso.aspx?key=" & Session("CHAVE") & "'><img src='http://www.welbe.com.br/images/compreen.jpg' border='0' /></a>"
                lnkBuy.NavigateUrl = "http://www.welbe.com.br/Curso.aspx?key=" & Session("CHAVE")
            End If

        End If
    End Sub

End Class
