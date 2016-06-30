package br.com.ruifpi.interceptor;

import javax.enterprise.context.RequestScoped;
import javax.inject.Inject;

import br.com.caelum.vraptor.AroundCall;
import br.com.caelum.vraptor.Intercepts;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.controller.ControllerMethod;
import br.com.caelum.vraptor.interceptor.AcceptsWithAnnotations;
import br.com.caelum.vraptor.interceptor.SimpleInterceptorStack;
import br.com.ruifpi.components.UsuarioSession;
import br.com.ruifpi.controllers.AutenticacaoController;
import br.com.ruifpi.util.ControleAcesso.PermissaoUsuarioCadastro;

@Intercepts
@RequestScoped
@AcceptsWithAnnotations(PermissaoUsuarioCadastro.class)
public class InterceptorPermissaoCadastro {
	
	@Inject
	private UsuarioSession usuarioSession;
	@Inject
	private Result result;

	@AroundCall
	public void verificaCadastroUsuarioValido(SimpleInterceptorStack stack, ControllerMethod method) {
		
		if(usuarioSession.getUsuario() != null && method.containsAnnotation(PermissaoUsuarioCadastro.class) ){
			stack.next();
		}else{
			result.include("erro", "Acesso Negado.");
			result.redirectTo(AutenticacaoController.class).home();
		}
	}
}