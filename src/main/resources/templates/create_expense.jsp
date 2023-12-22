<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Create Expenses/title>
<style>
td, th {
  font-family: arial, sans-serif;
}
</style>

</head>
<body style="background-color: #FFFFE0;">
<div style="margin-top:50px; margin-left:250px; height:50px;"><h2>Expense <c:out value="${employee.id != null ? 'Update' : 'Registration' }" /></h2></div>
  <form:form method="POST" modelAttribute="expense action="/home" name="expense">
     <table style="vertical-align: center; margin-left:20%;">
        <tr>
            <td>Expense Name :</td>
            <td><form:input path="name" id="expensename" /></td>
        </tr>
        <tr>
            <td>Expense Vendor :</td>
            <td><form:input path="vendor" id="expensevendor"/></td>
        </tr>
        <tr>
            <td>Expense Amount :</td>
            <td><form:input path="amount" id="expenseamount"/></td>
        </tr>
        <tr>
            <td>Expense Description :</td>
            <td><form:input path="description" id="expensedescription"/></td>
        </tr>
        <tr>
             <td colspan="2"><input type="submit" value="<c:out value="${expense.id != null ? 'Update' : 'Register' }" />"
             onclick="return validate();">&nbsp;&nbsp; <a href="/expenses">expenseList</a>&nbsp;
            <c:if test="${employee.id ne null}"><b>|</b>&nbsp;<a href="/create_expense">Create expense</a></c:if>
         </td>
    </tr>
</table>
</form:form>

</body>
</html>