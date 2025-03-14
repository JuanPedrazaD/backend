package entity;

import java.time.LocalDate;

public class Reserva {
    public enum TipoEspacio {
        ESCRITORIO,
        SALA_DE_REUNIONES,
        OFICINA_PRIVADA
    }

    private static int contadorId = 1; // Generador de IDs automáticos
    private int id;
    private String nombre;
    private LocalDate fechaReserva;
    private TipoEspacio tipoEspacio;
    private int duracion;

    public Reserva(String nombre, LocalDate fechaReserva, TipoEspacio tipoEspacio, int duracion) {
        this.id = contadorId++; // Asigna un ID único y lo incrementa
        this.nombre = nombre;
        this.fechaReserva = fechaReserva;
        this.tipoEspacio = tipoEspacio;
        this.duracion = duracion;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) { // Método opcional por si quieres asignarlo manualmente
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public LocalDate getFechaReserva() {
        return fechaReserva;
    }

    public void setFechaReserva(LocalDate fechaReserva) {
        this.fechaReserva = fechaReserva;
    }

    public TipoEspacio getTipoEspacio() {
        return tipoEspacio;
    }

    public void setTipoEspacio(TipoEspacio tipoEspacio) {
        this.tipoEspacio = tipoEspacio;
    }

    public int getDuracion() {
        return duracion;
    }

    public void setDuracion(int duracion) {
        this.duracion = duracion;
    }
}
