package co.danielpineros.registrosmanagement.service;

import java.util.List;

import co.danielpineros.registrosmanagement.model.Registros;



public interface RegistrosService {
	void save(Registros registros);
	Registros get(int id);
	void delete(int id);
	List<Registros> get();
}
