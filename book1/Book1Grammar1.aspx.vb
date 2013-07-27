Imports Conexoes
Imports Funcoes
Imports System.Web.Services
Imports System.Web.HttpContext

Partial Class _Book1Grammar1
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Not Page.IsPostBack Then

            If Not IsNumeric(Session("ID_CUSTOMER")) Then Response.Redirect("~/", True)
            If CInt(Session("book")) <> 1 Then Response.Redirect("~/", True)
            If Session("DEMO1") = True AndAlso CInt(Page.Title) > 1 Then Response.Redirect("~/", True)


        End If

    End Sub

    <WebMethod()> _
    Public Shared Function Unlock(ByVal _unit As String, ByVal _lesson As String) As String

        If IsNumeric(Current.Session("ID_CUSTOMER")) Then

            Dim book As Integer = 1
            Dim unit As Integer = _unit
            Dim lesson As Integer = GetCategoryNumberName(_lesson)

            If unit < CInt(Current.Session("unit")) Then
                Return ""
                Exit Function
            ElseIf unit = CInt(Current.Session("unit")) Then
                If lesson < CInt(Current.Session("category")) Then
                    Return ""
                    Exit Function
                End If
            End If

            If lesson = 5 Then
                If unit <> 10 Then
                    lesson = 1
                    unit = unit + 1
                End If
            Else
                lesson = lesson + 1
            End If

            GetExecuteNonQuery("UPDATE TB_CUSTOMER SET unit" & book & "=" & unit & ", lesson" & book & "=" & lesson & " WHERE id=" & Current.Session("ID_CUSTOMER"))

            Current.Session("book") = book.ToString
            Current.Session("unit") = unit.ToString
            Current.Session("category") = lesson.ToString

            Return (unit) & "|" & GetNumberName(unit) & "|" & GetCategoryName(lesson).ToLower

        End If


        Return ""
    End Function
    Public Shared Function GetCategoryNumberName(ByVal category As String) As Integer

        category = category.ToLower

        Select Case category

            Case "grammar"
                Return 1
            Case "text"
                Return 2
            Case "practice"
                Return 3
            Case "homework"
                Return 4
            Case "quiz"
                Return 5
            Case Else
                Return 0

        End Select

    End Function

End Class
