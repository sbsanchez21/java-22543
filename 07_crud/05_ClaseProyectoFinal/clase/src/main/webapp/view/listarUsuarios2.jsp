<!doctype html>
<%@page import="model.Usuario"%>
<%@page import="java.util.List"%>
<%@page import="dao.UsuarioDAO2"%>
<html lang="en">

<head>
    <title>Listar Usuarios</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS v5.2.1 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">

	<!-- Bootstrap icon -->
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.2/font/bootstrap-icons.css">

	
</head>

<body class="text-center bg-light">
    <header>
        <!-- place navbar here -->
    </header>
    <main>
        <div class="container">
            <div class="py-4">
                <img src="images/logo.jpg" alt="Logo" width="72" height="72">
                <p class="lead py-2">Listado de Usuarios</p>
            </div>

			
            <table class="table table-hover table-sm">
                <thead class="table-dark">
                  <tr>
                    <th scope="col">#ID</th>
                    <th scope="col">Usuario</th>
                    <th scope="col">Clave</th>
                    <th scope="col">Operaciones</th>
                  </tr>
                </thead>
                <tbody>
                <% 
                UsuarioDAO2 dao=new UsuarioDAO2();
                List<Usuario> listUsu=dao.listarUsuarios();
                
                for(Usuario usu: listUsu) {
                	out.println("<tr>");

                	out.println("<td>");
					out.println(usu.getIdUsuario());
                	out.println("</td>");

                	out.println("<td>");
					out.println(usu.getUsuario());
                	out.println("</td>");

                	out.println("<td>");
					out.println(usu.getClave());
                	out.println("</td>");
                	
                	out.println("<td>");
                	out.println("<a href='editUsuario.jsp?idUsuario="+usu.getIdUsuario()+"&usuario="+usu.getUsuario()+"&clave="+usu.getClave()+"'>");
					out.println("<i class='bi bi-pencil-fill'></i>");
					out.println("</a>");
					
					out.println("<i class='bi bi-trash-fill'></i>");
					
                	out.println("</td>");
                	                	
                	

                	out.println("</tr>");
                }
                
                %>

                </tbody>
              </table>            

        </div>

    </main>
    <footer>
        <!-- place footer here -->
    </footer>
    <!-- Bootstrap JavaScript Libraries -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
        integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous">
        </script>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.min.js"
        integrity="sha384-7VPbUDkoPSGFnVtYi0QogXtr74QeVeeIs99Qfg5YCF+TidwNdjvaKZX19NZ/e6oz" crossorigin="anonymous">
        </script>
</body>

</html>