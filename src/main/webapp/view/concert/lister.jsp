<%-- 
    Document   : consulter
    Created on : 5 oct. 2022, 10:25:26
    Author     : sio2
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>WebZik</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <link href="../css/custom.css" rel="stylesheet">
</head>
<body>
<div class="container px-4 px-lg-5 custom-container">
<br/>


<%
    ArrayList<Concert> lesConcerts = (ArrayList)request.getAttribute("pLesConcerts");
%>

<div class="card bg-normanzik">
                    <div class="card-header">
                    <b>Les groupes :</b>
                    </div>
    <table  class="table table-curved table-normanzik">
        <thead>
        <tr>
            <th>Nom</th>
            <th>Genre</th>
            <th>Membre contact</th>

        </tr>
        </thead>
        <tbody>
        <tr>
            <%
                for (Concert unConcert : lesConcerts) {
                    out.println("<tr>");
                    out.println("<td>");
                    out.println("&#128279 <a href ='../ServletGroupe/consulter?idGroupe=" + unGroupe.getId() + "'>");
                    out.println(unGroupe.getNom());
                    out.println("</a></td>");

                    out.println("<td>");
                    out.println(unGroupe.getGenre().getLibelle());
                    out.println("</td>");
                    
                    out.println("<td>");
                    out.println(unGroupe.getLeMembreContact().getNom());
                    out.println(" ");
                    out.println(unGroupe.getLeMembreContact().getPrenom());
                    out.println("</td>");
                    
                    
                }
            %>
        </tr>
    </tbody>
    </table>
</div>
        <br>
    <a href="http://localhost:8080/normanzik/ServletGroupe/ajouter">
        <button type="button" class="btn btn-normanzik">S'inscrire</button>
    </a>
        
</div>
</body>
</html>