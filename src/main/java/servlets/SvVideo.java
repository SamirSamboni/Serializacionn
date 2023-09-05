
package servlets;

import com.umariana.mundo.Video;
import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "SvVideo", urlPatterns = {"/SvVideo"})
public class SvVideo extends HttpServlet {

    ArrayList <Video> misVideos = new ArrayList <>();
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
           //Aqui vienen los datos por GET
        
                
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            //Aqui vienen los datos por POST
        
        
           
           //System.out.println("idVideo: "+idVideo);
           // System.out.println("categoria: "+categoria);
           //System.out.println("url: "+url);
           //System.out.println("letra: "+letra);
           // System.out.println("año: "+anio);
           //System.out.println("autor: "+autor);
           //System.out.println("titulo: "+titulo);
           
           String idVideo = request.getParameter("idVideo");
           String titulo = request.getParameter("titulo");
           String autor = request.getParameter("autor");
           String anio = request.getParameter("anio");
           String categoria = request.getParameter("categoria");
           String url = request.getParameter("url");
           String letra = request.getParameter("letra");
           
           //Ingresar los datos al objeto
           
           Video miVideo = new Video (Integer.parseInt(idVideo), titulo, autor, anio, categoria, url, letra);
           misVideos.add(miVideo);
           
           // Agregar el ArrayList al objeto de solicitud como atributo 
           request.setAttribute("misVideos", misVideos);
           
           // redireccionar a la pagina web destino
           request.getRequestDispatcher("listarVideos.jsp").forward(request, response);
           
           /*
           {
               System.out.println("idVideo: "+v.getIdVideo());
               System.out.println("titulo: "+v.getTitulo());
               System.out.println("autor: "+v.getAutor());
               System.out.println("año: "+v.getAnio());
               System.out.println("categoria: "+v.getCategoria());
               System.out.println("url: "+v.getUrl());
               System.out.println("letra: "+v.getLetra());
               System.out.println("-------------------------");
           }*/
        
    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }   

}
