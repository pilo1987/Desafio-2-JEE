<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="cl.praxis.model.Habitacion"%>
<%@page import="cl.praxis.model.HabitacionBusiness"%>

<%
HabitacionBusiness habitacion = new HabitacionBusiness();

List<Habitacion> habitacioneslist = habitacion.getHabitaciones();
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
						Habitaciones Disponibles (<%=habitacioneslist.size()%>)
					</h1>
					<hr />
				</div>
				<div
					class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
					<%
					for (int x = 0; x < habitacioneslist.size(); x++) {
					%>
					<div class="col mb-5">
						<div class="card h-100">
							<img class="card-img-top"
								src="<%=habitacioneslist.get(x).getImagen()%>"
								alt="<%=habitacioneslist.get(x).getNombre()%>" />
							<div class="card-body p-4">
								<div class="text-center">
									<h5 class="fwbolder"><%=habitacioneslist.get(x).getNombre()%></h5>

									<p><%=habitacioneslist.get(x).getDescripcion()%></p>
									CL$

									<%=habitacioneslist.get(x).getPrecio()%>
								</div>
							</div>
							<input type="radio" id="html" name="idHabitacion"
								value="<%=habitacioneslist.get(x).getId()%>" checked>
							<div
								class="card-footer p-4 pt-0 border-top-0 bg-transparent mt-4">
								<div class="text-center">
									<a class="btn btn-outline-dark mt-auto"
										href="detalle.jsp?idHabitacion=<%=habitacioneslist.get(x).getId()%>">
										Ver Detalle Evento</a>
								</div>
							</div>
						</div>
					</div>
					<%
					}
					%>
				</div>
			</div>
		</section>

		<section>
			<div class="container px-4 px-lg-5 mt-5">
				<h1>Información de Reserva Habitacion</h1>
				<hr />
				<div class="row g-3">
					<div class="col-md-6">
						<label for="Nombre" class="form-label">Nombre</label> <input
							type="text" class="form-control" id="nombre" name="nombre"
							value="Arturo Erasmo">
					</div>
					<div class="col-md-6">
						<label for="Apellido" class="form-label">Apellido</label> <input
							type="text" class="form-control" id="apellido" name="apellido"
							value="Vidal Pardo">
					</div>
					<div class="col-md-6">
						<label for="Email" class="form-label">Email</label> <input
							type="text" class="form-control" id="email" name="email"
							value="arturo.vidal@anfp.cl">
					</div>
					<div class="col-md-2">
						<label for="medio de pago" class="form-label"> Medio de Pago</label>
						<select id="medio de pago" name="medio de pago"
							class="form-select">

							<option value="Contado">Contado</option>
							<option value="Transferencia">Transferencia</option>
							<option value="Tarjeta de Credito">Tarjeta de Credito</option>
						</select>
					</div>
					<div class="col-md-2">
						<label for="cantidad de dias" class="form-label">Dias</label> <select
							id="dias" name="dias" class="form-select">
							<%
							for (int x = 0; x < 50; x++) {
							%>
							<option value="<%=x + 1%>"><%=x + 1%> Dias(s)
							</option>
							<%
							}
							%>
						</select>
					</div>
					<div class="col-2">
						<label for="fecha" class="form-label"> Fecha Entrada</label>
						<select id="fecha" name="fecha" class="form-select">
							<%
							for (int x = 0; x < 30; x++) {
							%>
							<option value="<%=x + 1%>"><%=x + 1%> Enero de 2024
							</option>
							<%
							}
							%>
						</select>
					</div>
					<hr />
					<div class="col-12">
						<button type="submit" class="btn btn-primary">Enviar
							Solicitud de Compra</button>
					</div>
				</div>
			</div>
		</section>
		<br /> <br />
	</form>



	<%@include file="assets/html/footer.jsp"%>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js"
		integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy"
		crossorigin="anonymous"></script>
</body>
</html>