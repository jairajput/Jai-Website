import Vapor

func routes(_ app: Application) throws {
    app.get { req in
        return "Visit /portfolio to see the portfolio page."
    }
    
    app.get("portfolio") { req in
        let html = """
        <!DOCTYPE html>
        <html lang="en">
        <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>Jai'S Website</title>
            <style>
                body {
                    font-family: 'Roboto', sans-serif;
                    color: #333;
                    background: #fff;
                    line-height: 1.6;
                }
                .container {
                    width: 80%;
                    margin: auto;
                    padding: 20px;
                }
                header {
                    background: #f8f8f8;
                    color: #333;
                    padding: 10px 0;
                }
                header h1 {
                    margin: 0;
                }
                nav ul {
                    padding: 0;
                    list-style: none;
                }
                nav ul li {
                    display: inline;
                    margin-right: 20px;
                }
                nav ul li a {
                    color: #333;
                    text-decoration: none;
                    transition: color 0.3s;
                }
                nav ul li a:hover,
                nav ul li .current {
                    color: #0073e6;
                }
                section {
                    margin-bottom: 40px;
                }
                footer {
                    background: #f8f8f8;
                    color: #333;
                    text-align: center;
                    padding: 10px 0;
                }
                @media (max-width: 600px) {
                    .container {
                        width: 100%;
                        padding: 10px;
                    }
                    nav ul li {
                        display: block;
                        margin-bottom: 5px;
                    }
                }
            </style>
        </head>
        <body>
            <header>
                <div class="container">
                    <h1> JAI </h1>
                    <nav>
                        <ul>
                            <li class="current"><a href="#">Home</a></li>
                            <li><a href="#about">About</a></li>
                            <li><a href="#projects">Projects</a></li>
                            <li><a href="#blogs">Blogs</a></li>
                            <li><a href="#contact">Contact</a></li>
                        </ul>
                    </nav>
                </div>
            </header>
            
            <!-- About Section -->
            <div class="container" id="about">
                <section class="bio">
                    <h2>About Me</h2>
                    <p>
          
          Hey there! I'm a fresh-faced iOS Developer by day, and a Frontend Developer by twilight. I Crafted this Website With  Swift and a sprinkle of Vapor magic, this website is my digital playground. It's not dressed in fancy code lace, but it's got character (and a few quirky bugs for good measure). Dive in, explore, and enjoy my code-scape. Remember, in the world of 127.0.0.1, every bug is a feature waiting to be discovered!".<h2>&#128513 &#128187 &#128640;</h2>
        </p>
                </section>
            </div>
        
            <!-- Projects Section -->
            <div class="container" id="projects">
                <section class="projects">
                    <h2>Projects</h2>
                    <ul>
        
        <li><a href="https://github.com/jairajput/TwitterClone" target="_blank">Twitter Clone</a></li>
        <li><a href="https://github.com/jairajput/Website" target="_blank">Personal Website</a></li>
        <li><a href="https://github.com/jairajput/GoalGrid" target="_blank">Goal Grid</a></li>
        <li><a href="https://github.com/jairajput/CryptoApp" target="_blank">Crypto App</a></li>
        <li><a href="https://github.com/jairajput/Tour" target="_blank">Tour Planner</a></li>
        <li><a href="https://github.com/jairajput/Wastesegregationmachine" target="_blank">Waste Segregation Machine</a></li>
        <li><a href="https://github.com/jairajput/QuickQuiz" target="_blank">Quick Quiz</a></li>
        <li><a href="https://github.com/jairajput/SprintSaga" target="_blank">Sprint Saga</a></li>
        <li><a href="https://github.com/jairajput/VerbalEnigma" target="_blank">Verbal Enigma</a></li>
        <li><a href="https://github.com/jairajput/TrekrApp" target="_blank">Trekr App</a></li>
        <li><a href="https://github.com/jairajput/Job-app" target="_blank">Job App</a></li>
        <li><a href="https://github.com/jairajput/Guess-Game-2" target="_blank">Guess Game 2</a></li>
        <li><a href="https://github.com/jairajput/WildHunt" target="_blank">Wild Hunt</a></li>
        
        
        
        
                    </ul>
                </section>
            </div>
        
            <!-- Blogs Section -->
            <div class="container" id="blogs">
                <section class="blogs">
                    <h2>Blogs</h2>
                    <ul>
                        <li><a href="https://jairajput.hashnode.dev/async-image" target="_blank">Async Image</a></li>
                        <li><a href="https://jairajput.hashnode.dev/swift-data" target="_blank">Swift Data</a></li>
                        <li><a href="https://medium.com/@jai7/navigation-view-tabbed-view-e7e289312c06" target="_blank">Navigation View & Tabbed View</a></li>
                        <li><a href="https://medium.com/@jai7/structure-and-classes-in-swift-a3f411257a2b" target="_blank">Structure and Classes in Swift</a></li>
                        <li><a href="https://medium.com/@jai7/function-in-swift-88135fe579d8" target="_blank">Function in Swift</a></li>
                        <li><a href="https://medium.com/@jai7/string-delimiters-in-swift-1136b58c0d73" target="_blank">String Delimiters in Swift</a></li>
        
        
                    </ul>
                </section>
            </div>
        
            <!-- Contact Section -->
            <div class="container" id="contact">
                <section class="social-media">
                    <h2>Connect with Me</h2>
                    <ul>
        
                        <li><a href="https://www.linkedin.com/in/jai7rajput/" target="_blank">LinkedIn</a></li>
                        <li><a href="https://github.com/jairajput" target="_blank">GitHub</a></li>
                        <li><a href="https://twitter.com/jaivsr" target="_blank">Twitter</a></li>
        
                    </ul>
                </section>
            </div>
        
            <!-- Footer -->
            <footer>
                <div class="container">
                    <p>&copy; [2023] Jai's . All Rights Reserved.</p>
                </div>
            </footer>
        </body>
        </html>
        """
        return req.eventLoop.makeSucceededFuture(Response(headers: ["Content-Type": "text/html"], body: .init(string: html)))
    }
}

