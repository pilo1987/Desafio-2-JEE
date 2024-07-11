package cl.praxis.model;

import java.util.List;
import java.util.ArrayList;

public class HabitacionBusiness {

	public List<Habitacion> getHabitaciones() {

		ArrayList<Habitacion> habitacioneslist = new ArrayList<Habitacion>();

		Habitacion habitacion1 = new Habitacion();
		habitacion1.setId(1);
		habitacion1.setNombre("Habitacion 1, Simple");
		habitacion1.setDescripcion("Habitacion Clasica con cama extra grande,  vistas al oceano y balcon");
		habitacion1.setImagen(
				"https://img.freepik.com/foto-gratis/representacion-3d-hermosa-suite-dormitorio-lujo-hotel-mesa-trabajo_105762-2154.jpg?t=st=1720249508~exp=1720253108~hmac=8e75d5157f38cb902a21f89911cc2dbd29f6668537c9b30a9f190bbb369462fa&w=900");
		habitacion1.setPrecio(10000);
		habitacion1.setHabitaciones(2);
		habitacion1.setMetraje(200);

		Habitacion habitacion2 = new Habitacion();
		habitacion2.setId(2);
		habitacion2.setNombre("Habitacion 2, Simple");
		habitacion2.setDescripcion("Habitacion Clasica con 2 camas grandes o dobles vistas al oceano y balcon");
		habitacion2.setImagen(
				"https://img.freepik.com/foto-gratis/fondo-dormitorio-llamadas-zoom_52683-95239.jpg?t=st=1720249618~exp=1720253218~hmac=db4f509287641f062c233487b732cd54eef92881d5ac98e9294ba6c1e2082ae5&w=900");
		habitacion2.setPrecio(20000);
		habitacion2.setHabitaciones(2);
		habitacion2.setMetraje(200);

		Habitacion habitacion3 = new Habitacion();
		habitacion3.setId(3);
		habitacion3.setNombre("Habitacion 3, Doble - Normal");
		habitacion3.setDescripcion("Habitacion Superior con planta alta, con vistas al oceano y 2 camas dobles");
		habitacion3.setImagen(
				"https://img.freepik.com/foto-gratis/dormitorio-interior_1098-15128.jpg?t=st=1720249722~exp=1720253322~hmac=c03a6cf3e191b499f8f94faf8f2d8dd6fced3fbd419484bca7f3eb2d11a621fb&w=900");
		habitacion3.setPrecio(30000);
		habitacion3.setHabitaciones(2);
		habitacion3.setMetraje(200);

		Habitacion habitacion4 = new Habitacion();
		habitacion4.setId(4);
		habitacion4.setNombre("Habitacion 4, Doble - King");
		habitacion4.setDescripcion("Suite Executive en planta superior con cama extra grande y vistas al oceano");
		habitacion4.setImagen(
				"https://img.freepik.com/fotos-premium/diseno-interiores-lujo-dormitorio-cama-king-acogedor_41487-198.jpg?w=900");
		habitacion4.setPrecio(40000);
		habitacion4.setHabitaciones(2);
		habitacion4.setMetraje(200);

		Habitacion habitacion5 = new Habitacion();
		habitacion5.setId(5);
		habitacion5.setNombre("Habitacion 5, Doble - King");
		habitacion5.setDescripcion("Suite Executive en planta superior con cama extra grande y vistas al oceano");
		habitacion5.setImagen(
				"https://img.freepik.com/fotos-premium/bolso-vintage-cama-dormitorio-acogedor_46370-624.jpg?ga=GA1.1.1152445219.1711513620&semt=ais_user");
		habitacion5.setPrecio(50000);
		habitacion5.setHabitaciones(2);
		habitacion5.setMetraje(200);

		Habitacion habitacion6 = new Habitacion();
		habitacion6.setId(6);
		habitacion6.setNombre("Habitacion 6, Doble - King");
		habitacion6.setDescripcion("Suite Executive en planta superior con cama extra grande y vistas al oceano");
		habitacion6.setImagen(
				"https://img.freepik.com/foto-gratis/pequena-habitacion-hotel-paredes-blancas-ventana-panoramica_1262-12488.jpg?ga=GA1.1.1152445219.1711513620&semt=ais_user");
		habitacion6.setPrecio(60000);
		habitacion6.setHabitaciones(2);
		habitacion6.setMetraje(200);

		Habitacion habitacion7 = new Habitacion();
		habitacion7.setId(7);
		habitacion7.setNombre("Habitacion 7, Doble - King");
		habitacion7.setDescripcion("Suite Executive en planta superior con cama extra grande y vistas al oceano");
		habitacion7.setImagen(
				"https://img.freepik.com/foto-gratis/suite-dormitorio-moderno-clasico-lujo-hotel_105762-1787.jpg?ga=GA1.1.1152445219.1711513620&semt=ais_user");
		habitacion7.setPrecio(70000);
		habitacion7.setHabitaciones(2);
		habitacion7.setMetraje(200);

		Habitacion habitacion8 = new Habitacion();
		habitacion8.setId(8);
		habitacion8.setNombre("Habitacion 8, Doble - King");
		habitacion8.setDescripcion("Suite Executive en planta superior con cama extra grande y vistas al oceano");
		habitacion8.setImagen(
				"https://img.freepik.com/fotos-premium/fotografia-interiores-dormitorio-estilo-moderno-cama-grande_321831-667.jpg?ga=GA1.1.1152445219.1711513620&semt=ais_user");
		habitacion8.setPrecio(80000);
		habitacion8.setHabitaciones(2);
		habitacion8.setMetraje(200);

		habitacioneslist.add(habitacion1);
		habitacioneslist.add(habitacion2);
		habitacioneslist.add(habitacion3);
		habitacioneslist.add(habitacion4);
		habitacioneslist.add(habitacion5);
		habitacioneslist.add(habitacion6);
		habitacioneslist.add(habitacion7);
		habitacioneslist.add(habitacion8);

		return habitacioneslist;
	}

	public Habitacion getHabitacionbyID(Habitacion habitacion) {
		List<Habitacion> listaHabitaciones = getHabitaciones();
		for (int x = 0; x < listaHabitaciones.size(); x++) {
			if (listaHabitaciones.get(x).getId() == habitacion.getId()) {
				habitacion = listaHabitaciones.get(x);
			}
		}
		return habitacion;
	}

	public int calcularValorCompra(int valorHabitacion, int dias) {
		int valor = valorHabitacion * dias;
		return valor;
	}
}
