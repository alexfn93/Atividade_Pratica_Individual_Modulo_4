package controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

import model.DAO;
import model.Clientes;

@WebServlet(urlPatterns = { "/main", "/inserir", "/select", "/update", "/delete" })
public class Controller extends HttpServlet {
    private static final long serialVersionUID = 1L;

    DAO dao = new DAO();
    Clientes clientes = new Clientes();

    public Controller() {
        super();
    }


    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String action = request.getServletPath();
        System.out.println(action);

        if (action.equals("/main")) {
            this.clientes(request, response);
        } else if (action.equals("/inserir")) {
            System.out.println("\n \n \n Request get \n \n \n " + request);
            novoCliente(request, response);
        } else if (action.equals("/select")) {
            listarClientes(request, response);
        } else if (action.equals("/update")) {
            editarClientes(request, response);
        } else if (action.equals("/delete")) {
            removerClientes(request, response);
        } else {
            response.sendRedirect("clientes.jsp");
        }
    }

    protected void clientes(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Criar uma objeto do tipo lista para receber os clientes do metodo
        // listarClientes
        ArrayList<Clientes> lista = dao.listarClientes();

        // Enviar os dados para a página clientes.jsp
        request.setAttribute("clientes", lista);
        RequestDispatcher rd = request.getRequestDispatcher("clientes.jsp");
        rd.forward(request, response);

    }

    protected void novoCliente(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        clientes.setNome(request.getParameter("nome"));
        clientes.setSobrenome(request.getParameter("sobrenome"));
        clientes.setDataNascimento(request.getParameter("dataNascimento"));
        clientes.setCpf(request.getParameter("cpf"));
        clientes.setNacionalidade(request.getParameter("nacionalidade"));
        clientes.setCelular(request.getParameter("celular"));
        clientes.setSexo(request.getParameter("sexo"));
        clientes.setEmail(request.getParameter("email"));

        // Chamar o método inserirCliente do DAO
        dao.inserirCliente(clientes);
        // Redirecionar a tela
        response.sendRedirect("main");
    }

    protected void listarClientes(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Pegar ID do cliente selecionado
        String idclientes = request.getParameter("idclientes");
        clientes.setIdclientes(idclientes);
        // Executar o método selecionarCliente do DAO
        dao.selecionarCliente(clientes);
        // Colocar os dados no objeto Cliente
        request.setAttribute("idclientes", clientes.getIdclientes());
        request.setAttribute("nome", clientes.getNome());
        request.setAttribute("sobrenome", clientes.getSobrenome());
        request.setAttribute("dataNascimento", clientes.getDataNascimento());
        request.setAttribute("cpf", clientes.getCpf());
        request.setAttribute("nacionalidade", clientes.getNacionalidade());
        request.setAttribute("celular", clientes.getCelular());
        request.setAttribute("sexo", clientes.getSexo());
        request.setAttribute("email", clientes.getEmail());
        // Enviar documento para a página editar.jsp
        RequestDispatcher rd = request.getRequestDispatcher("editar.jsp");
        rd.forward(request, response);
    }

    protected void editarClientes(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Popular os dados no objeto cliente
        clientes.setNome(request.getParameter("nome"));
        clientes.setSobrenome(request.getParameter("sobrenome"));
        clientes.setDataNascimento(request.getParameter("dataNascimento"));
        clientes.setCpf(request.getParameter("cpf"));
        clientes.setNacionalidade(request.getParameter("nacionalidade"));
        clientes.setCelular(request.getParameter("celular"));
        clientes.setSexo(request.getParameter("sexo"));
        clientes.setEmail(request.getParameter("email"));
        // Alterar o cliente usando o DAO
        dao.alterarCliente(clientes);
        // Redirecionar para o documento clientes.jsp (com os dados atualizado)
        response.sendRedirect("main");
    }

    protected void removerClientes(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Recebe o id do clienet a ser excluido do validador.js
        String idclientes = request.getParameter("idclientes");
        // Definir idcli a ser excluido
        clientes.setIdclientes(idclientes);
        // executar o metodo de excluir no DAO
        dao.deletarCliente(clientes);
        // Redirecionar para o documento clientes.jsp (como os dados atualizados)
        response.sendRedirect("main");
    }

}
