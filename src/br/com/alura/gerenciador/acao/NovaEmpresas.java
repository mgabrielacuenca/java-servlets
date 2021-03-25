package br.com.alura.gerenciador.acao;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.alura.gerenciador.modelo.Banco;
import br.com.alura.gerenciador.modelo.Empresa;

public class NovaEmpresas {

	public void executa(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		System.out.println("Cadastrando nova empresa");

		String nomeEmpresa = request.getParameter("nome");
		String dataEmpresa = request.getParameter("data");

		SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");

		Date dataAbertura = null;
		try {
			dataAbertura = sdf.parse(dataEmpresa);
		} catch (ParseException e) {

			throw new ServletException(e);
		}

		Empresa emp = new Empresa();
		emp.setNome(nomeEmpresa);
		emp.setDataAbertura(dataAbertura);

		Banco banco = new Banco();
		banco.adiciona(emp);

		request.setAttribute("empresa", emp.getNome());
		response.sendRedirect("entrada?acao=listaEmpresas");

	}
}
