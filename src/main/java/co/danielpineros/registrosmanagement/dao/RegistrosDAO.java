package co.danielpineros.registrosmanagement.dao;

import java.util.List;

import co.danielpineros.registrosmanagement.model.Registros;



public interface RegistrosDAO {
	
	void save(Registros registros);
	Registros get(int id);
	void delete(int id);
	List<Registros> get();
}
