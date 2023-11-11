import Vapor

func routes(_ app: Application) throws {
    app.get { req in
        return "portfolio to see the portfolio page."
    }
    
    app.get("portfolio") { req in
        let html = """
        <html>
        <head>
            <title>Portfolio</title>
            <style>
                body {
                    font-family: 'Arial', sans-serif;
                    line-height: 1.6;
                    color: black;
                    background: linear-gradient(to right, #7F7FD5, #86A8E7, #91EAE4); /* New gradient background */
                    background-size: cover;
                    background-attachment: fixed;
                    background-image: url('coding-background.jpg'); /* Placeholder for coding background image */
                }
                .container {
                    width: 80%;
                    margin: auto;
                    overflow: hidden;
                    background: rgba(255, 255, 255, 0.9); /* Slightly transparent white background for content */
                    padding: 20px;
                    border-radius: 10px;
                    box-shadow: 0 0 15px rgba(0, 0, 0, 0.5); /* Enhanced shadow for depth */
                }
                header {
                    background: #000; /* Black background for header */
                    color: #fff; /* White text for header */
                    padding-top: 30px;
                    min-height: 70px;
                    border-bottom: #0073e6 3px solid; /* Blue border */
                }
                header a {
                    color: #fff;
                    text-decoration: none;
                    text-transform: uppercase;
                    font-size: 16px;
                    transition: color 0.3s; /* Smooth transition for hover effect */
                }
                header ul {
                    padding: 0;
                    margin: 0;
                    list-style: none;
                    overflow: hidden;
                }
                header li {
                    float: left;
                    display: inline;
                    padding: 0 20px;
                }
                header #branding {
                    float: left;
                }
                header #branding h1 {
                    margin: 0;
                }
                header nav {
                    float: right;
                    margin-top: 10px;
                }
                header .highlight, header .current a {
                    color: #0073e6; /* Blue color for highlighted and current links */
                    font-weight: bold;
                }
                header a:hover {
                    color: #e8491d; /* Color change on hover */
                }
                .bio, .projects, .social-media {
                    padding: 15px;
                    animation: fadeIn 2s; /* Fade-in animation */
                }
                .bio h2, .projects h2, .social-media h2 {
                    color: #333;
                }
        
                @keyframes fadeIn {
                    from { opacity: 0; }
                    to { opacity: 1; }
                }
            </style>
        </head>
        <body>
            <header>
                <div class="container">
                    <div id="branding">
                        <h1><span class="highlight">Jai'S</span> Portfolio</h1>
                    </div>
                    <nav>
                        <ul>
                            <li class="current"><a href="#">Home</a></li>
                        </ul>
                    </nav>
                </div>
            </header>
        
            <div class="container">
                <section class="bio">
                    <h2>About Me</h2>
                    <p>Hey, I am an iOS Developer and also a part-time Frontend Developer. That's why I created my website using Swift 😂.</p>
                </section>
        
                <section class="projects">
                    <h2>Projects</h2>
                    <p>Details about projects.</p>
                </section>
        
                <section class="social-media">
                    <h2>Connect with Me</h2>
                    <ul>
                        <li><a href="https://www.linkedin.com/in/jai7rajput/" target="_blank">LinkedIn</a></li>
                        <li><a href="https://github.com/jairajput" target="_blank">GitHub</a></li>
                        <li><a href="https://twitter.com/jaivsr" target="_blank">Twitter</a></li>
                    </ul>
                </section>
            </div>
        </body>
        </html>
        """
        return req.eventLoop.makeSucceededFuture(Response(headers: ["Content-Type": "text/html"], body: .init(string: html)))
    }
}
