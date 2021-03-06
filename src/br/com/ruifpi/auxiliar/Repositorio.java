package br.com.ruifpi.auxiliar;

import java.sql.Date;
import java.util.List;

import br.com.ruifpi.models.PratoDia;
import br.com.ruifpi.models.Funcionario;
import br.com.ruifpi.models.Usuario;

public interface Repositorio {

		
	public List<Funcionario> buscaFuncionariosAtivos();
	
	public List<Usuario> buscaUsuariosAtivos();
	
	public List<PratoDia> buscaCardapioDataSolicitada(Date dataCardapio);
	
	public List<PratoDia> buscaCardapioPeriodoSelecionado(Date periodoInicial, Date periodoFinal);
	

}
