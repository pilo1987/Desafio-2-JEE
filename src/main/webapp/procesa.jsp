<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="cl.praxis.model.Habitacion"%>
<%@page import="cl.praxis.model.HabitacionBusiness"%>

<%
String nombreComprador = request.getParameter("nombre");
String apellidoComprador = request.getParameter("apellido");
String emailComprador = request.getParameter("email");
String medioPagoComprador = request.getParameter("medio de pago");
int diasComprador = Integer.parseInt(request.getParameter("dias"));
int fechaComprador = Integer.parseInt(request.getParameter("fecha"));
int idHabitacion = Integer.parseInt(request.getParameter("idHabitacion"));

HabitacionBusiness habitacionb = new HabitacionBusiness();

Habitacion habitacion = new Habitacion();
habitacion.setId(idHabitacion);

habitacion = habitacionb.getHabitacionbyID(habitacion);

int valorPagar = habitacionb.calcularValorCompra(habitacion.getPrecio(), diasComprador);
%>

<!DOCTYPE html>
<html lang="es">
<%@include file="assets/html/head.jsp"%>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
<body>
	<%@include file="assets/html/header.jsp"%>

	<form method="post" action="procesa.jsp">

		<section class="py-5">
			<div class="container px-4 px-lg-5 mt-5">
				<div class="row justify-content-center">
					<h1>
						Detalle Solicitud de Habitacion: <strong><%=habitacion.getNombre()%></strong>
					</h1>
					<hr />
				</div>
			</div>
			<div class="container px-4 px-lg-5 mt-5">
				<table class="table">
					<thead>
						<tr>
							<th scope="col">#</th>
							<th scope="col">Item</th>
							<th scope="col">Valor</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<th scope="row">1</th>
							<td>Nombre</td>
							<td><%=nombreComprador%></td>
						</tr>
						<tr>
							<th scope="row">2</th>
							<td>Apellido</td>
							<td><%=apellidoComprador%></td>
						</tr>
						<tr>
							<th scope="row">3</th>
							<td>Email</td>
							<td><%=emailComprador%></td>
						</tr>
						<tr>
							<th scope="row">4</th>
							<td>Medio de Pago</td>
							<td><strong><%=medioPagoComprador%></strong></td>
						</tr>
						<tr>
							<th scope="row">5</th>
							<td>Dias</td>
							<td><strong><%=diasComprador%> Dias</strong></td>
						</tr>
						<tr>
							<th scope="row">6</th>
							<td>Fecha de Entrada</td>
							<td><strong><%=fechaComprador%> Enero de 2024 </strong></td>
						</tr>
						<tr>
							<th scope="row">7</th>
							<td>Valor a Pagar</td>
							<td><strong>CL$ <%=valorPagar%></strong></td>
						</tr>
					</tbody>
				</table>
			</div>
		</section>
		<br /> <br />
	</form>
	<%@include file="assets/html/footer.jsp"%>
</body>
</html>