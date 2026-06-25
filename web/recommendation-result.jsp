<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>

        <title>Smart Recommendations</title>

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
              rel="stylesheet">

        <link rel="stylesheet"
              href="css/style.css">

        <link rel="stylesheet"
              href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">

    </head>

    <body>

        <div class="container mt-5">

            <div class="text-center mb-5">

                <h1>

                    <i class="fa-solid fa-wand-magic-sparkles"></i>

                    Your Smart Outfit Recommendations

                </h1>

                <p>

                    Smart fashion recommendations based on your style and preferences

                </p>

            </div>

            <div class="gallery-grid">

                <div class="gallery-grid">

                    <div class="card recommendation-card mx-auto text-center"
                         style="max-width:500px;">

                        <img src="<%= request.getContextPath() + "/" + request.getAttribute("image")%>"
                             class="recommendation-img">

                        <div class="card-body">

                            <h2>

                                Recommended Outfit

                            </h2>

                            <br>

                            <p class="preference-text">

                                <%= request.getAttribute("weather")%>

                                •

                                <%= request.getAttribute("occasion")%>

                                •

                                <%= request.getAttribute("mood")%>

                            </p>

                            <hr>

                            <p class="outfit-description">

                                <%= request.getAttribute("recommendation")%>

                            </p>
                            <div class="text-center">

                                <a href="recommendations.jsp"
                                   class="btn btn-primary btn-lg mt-3">

                                    Try Another Recommendation

                                </a>
                                

                            </div>

                        </div>

                    </div>

                </div>

            </div>

        </div>

    </body>

</html>