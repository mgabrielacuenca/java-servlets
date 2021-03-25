package br.com.alura.gerenciador.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.alura.gerenciador.acao.AlteraEmpresas;
import br.com.alura.gerenciador.acao.ListaEmpresas;
import br.com.alura.gerenciador.acao.MostraEmpresas;
import br.com.alura.gerenciador.acao.NovaEmpresas;
import br.com.alura.gerenciador.acao.RemoveEmpresas;

@WebServlet("/entrada")
public class UnicaEntradaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String paramAcao = request.getParameter("acao");
		
		String nome = null;
		if (paramAcao.equals("listaEmpresas")) {

			ListaEmpresas acao = new ListaEmpresas();
			nome = acao.executa(request, response);

		} else if (paramAcao.equals("removeEmpresa")) {

			RemoveEmpresas acao = new RemoveEmpresas();
			nome = acao.executa(request, response);

		} else if (paramAcao.equals("mostraEmpresa")) {

			MostraEmpresas acao = new MostraEmpresas();
			acao.executa(request, response);

		} else if (paramAcao.equals("alteraEmpresa")) {

			AlteraEmpresas acao = new AlteraEmpresas();
			acao.executa(request, response);

		} else if (paramAcao.equals("novaEmpresa")) {

			NovaEmpresas acao = new NovaEmpresas();
			acao.executa(request, response);

		}


		String[] tipoEEndereco = nome.split(":");
		if(tipoEEndereco[0].equals("forward")) {
			RequestDispatcher rd = request.getRequestDispatcher(tipoEEndereco[1]);
			rd.forward(request, response);
		} else {
			response.sendRedirect(tipoEEndereco[1]);
		}
	}

}
