package co.danielpineros.registrosmanagement.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import co.danielpineros.registrosmanagement.dao.RegistrosDAO;
import co.danielpineros.registrosmanagement.model.Registros;



@Service
public class RegistrosServiceImpl implements RegistrosService{

	@Autowired
	private RegistrosDAO registrosDAO;
	
	@Override
	@Transactional
	public void save(Registros registros) {
		registrosDAO.save(registros);
	}
        
        

	@Override
	@Transactional
	public Registros get(int id) {
		return registrosDAO.get(id);
	}

	@Override
	@Transactional
	public void delete(int id) {
		registrosDAO.delete(id);
	}

	@Override
	@Transactional
	public List<Registros> get() {
		return registrosDAO.get();
	}
	
	
}
