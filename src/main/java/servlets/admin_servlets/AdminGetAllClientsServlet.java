package servlets.admin_servlets;

import pojo.Client;
import services.admin_services.AdminService;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class AdminGetAllClientsServlet extends HttpServlet {
    private static AdminService adminService = new AdminService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/admin_client_list.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Client> clients;

        clients = adminService.doAdminGetAllClients();

        req.setAttribute("list", clients);
        req.getRequestDispatcher("/admin_client_list.jsp").forward(req, resp);
    }
}
