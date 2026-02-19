<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>From Bookstore to Cloud Giant | The AWS Story</title>
  <meta name="description" content="Discover how Amazon transformed from an online bookstore into the world's largest cloud computing platform. A retro-futuristic journey through AWS history." />
  <meta name="author" content="AWS Story" />
  <meta property="og:title" content="From Bookstore to Cloud Giant | The AWS Story" />
  <meta property="og:description" content="Discover how Amazon transformed from an online bookstore into the world's largest cloud computing platform." />
  <meta property="og:type" content="website" />
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Space+Mono:wght@400;700&family=Orbitron:wght@400;500;600;700;800;900&family=Inter:wght@300;400;500;600&display=swap" rel="stylesheet">
  
  <style>
    :root {
      --bg-primary: #0a0a0f;
      --bg-secondary: #12121a;
      --bg-tertiary: #1a1a25;
      --accent-orange: #ff9500;
      --accent-amber: #ffb347;
      --accent-glow: #ff6b00;
      --text-primary: #e8e8ed;
      --text-secondary: #8b8b9a;
      --text-muted: #5a5a6a;
      --border-color: #2a2a3a;
      --gradient-orange: linear-gradient(135deg, #ff9500 0%, #ff6b00 100%);
      --gradient-dark: linear-gradient(180deg, #0a0a0f 0%, #12121a 100%);
      --scanline-opacity: 0.03;
    }

    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    html {
      scroll-behavior: smooth;
    }

    body {
      font-family: 'Inter', sans-serif;
      background: var(--bg-primary);
      color: var(--text-primary);
      line-height: 1.7;
      overflow-x: hidden;
    }

    /* Retro Scanline Effect */
    body::before {
      content: '';
      position: fixed;
      top: 0;
      left: 0;
      width: 100%;
      height: 100%;
      pointer-events: none;
      background: repeating-linear-gradient(
        0deg,
        transparent,
        transparent 2px,
        rgba(0, 0, 0, var(--scanline-opacity)) 2px,
        rgba(0, 0, 0, var(--scanline-opacity)) 4px
      );
      z-index: 9999;
    }

    /* CRT Vignette Effect */
    body::after {
      content: '';
      position: fixed;
      top: 0;
      left: 0;
      width: 100%;
      height: 100%;
      pointer-events: none;
      background: radial-gradient(ellipse at center, transparent 0%, rgba(0,0,0,0.3) 100%);
      z-index: 9998;
    }

    .container {
      max-width: 1200px;
      margin: 0 auto;
      padding: 0 2rem;
    }

    /* Navigation */
    nav {
      position: fixed;
      top: 0;
      left: 0;
      right: 0;
      z-index: 1000;
      padding: 1.5rem 0;
      background: rgba(10, 10, 15, 0.85);
      backdrop-filter: blur(20px);
      border-bottom: 1px solid var(--border-color);
    }

    nav .container {
      display: flex;
      justify-content: space-between;
      align-items: center;
    }

    .logo {
      font-family: 'Orbitron', monospace;
      font-size: 1.25rem;
      font-weight: 700;
      color: var(--accent-orange);
      text-decoration: none;
      letter-spacing: 2px;
      text-shadow: 0 0 20px rgba(255, 149, 0, 0.5);
    }

    .nav-links {
      display: flex;
      gap: 2.5rem;
      list-style: none;
    }

    .nav-links a {
      font-family: 'Space Mono', monospace;
      font-size: 0.75rem;
      color: var(--text-secondary);
      text-decoration: none;
      letter-spacing: 1px;
      text-transform: uppercase;
      transition: color 0.3s ease, text-shadow 0.3s ease;
    }

    .nav-links a:hover {
      color: var(--accent-orange);
      text-shadow: 0 0 10px rgba(255, 149, 0, 0.5);
    }

    /* Hero Section */
    .hero {
      min-height: 100vh;
      display: flex;
      align-items: center;
      justify-content: center;
      position: relative;
      overflow: hidden;
      background: var(--gradient-dark);
    }

    .hero-bg {
      position: absolute;
      inset: 0;
      background: 
        radial-gradient(circle at 20% 50%, rgba(255, 149, 0, 0.08) 0%, transparent 50%),
        radial-gradient(circle at 80% 20%, rgba(255, 107, 0, 0.05) 0%, transparent 40%),
        radial-gradient(circle at 40% 80%, rgba(255, 179, 71, 0.03) 0%, transparent 40%);
    }

    .grid-overlay {
      position: absolute;
      inset: 0;
      background-image: 
        linear-gradient(rgba(255, 149, 0, 0.03) 1px, transparent 1px),
        linear-gradient(90deg, rgba(255, 149, 0, 0.03) 1px, transparent 1px);
      background-size: 60px 60px;
      transform: perspective(500px) rotateX(60deg);
      transform-origin: center top;
      opacity: 0.5;
    }

    .hero-content {
      text-align: center;
      z-index: 10;
      max-width: 900px;
      padding: 0 2rem;
    }

    .hero-badge {
      display: inline-block;
      font-family: 'Space Mono', monospace;
      font-size: 0.7rem;
      letter-spacing: 3px;
      text-transform: uppercase;
      color: var(--accent-orange);
      background: rgba(255, 149, 0, 0.1);
      border: 1px solid rgba(255, 149, 0, 0.3);
      padding: 0.5rem 1.5rem;
      margin-bottom: 2rem;
      animation: pulse-glow 2s ease-in-out infinite;
    }

    @keyframes pulse-glow {
      0%, 100% { box-shadow: 0 0 20px rgba(255, 149, 0, 0.2); }
      50% { box-shadow: 0 0 40px rgba(255, 149, 0, 0.4); }
    }

    .hero h1 {
      font-family: 'Orbitron', monospace;
      font-size: clamp(2.5rem, 8vw, 5rem);
      font-weight: 800;
      line-height: 1.1;
      margin-bottom: 1.5rem;
      background: linear-gradient(135deg, var(--text-primary) 0%, var(--accent-amber) 50%, var(--accent-orange) 100%);
      -webkit-background-clip: text;
      -webkit-text-fill-color: transparent;
      background-clip: text;
      text-shadow: none;
    }

    .hero-subtitle {
      font-size: 1.25rem;
      color: var(--text-secondary);
      max-width: 600px;
      margin: 0 auto 3rem;
      font-weight: 300;
    }

    .hero-year {
      font-family: 'Orbitron', monospace;
      font-size: 8rem;
      font-weight: 900;
      color: transparent;
      -webkit-text-stroke: 1px var(--border-color);
      position: absolute;
      bottom: 10%;
      right: 5%;
      opacity: 0.3;
      letter-spacing: -5px;
    }

    .scroll-indicator {
      position: absolute;
      bottom: 3rem;
      left: 50%;
      transform: translateX(-50%);
      display: flex;
      flex-direction: column;
      align-items: center;
      gap: 0.5rem;
      animation: bounce 2s ease-in-out infinite;
    }

    .scroll-indicator span {
      font-family: 'Space Mono', monospace;
      font-size: 0.65rem;
      letter-spacing: 2px;
      text-transform: uppercase;
      color: var(--text-muted);
    }

    .scroll-indicator .arrow {
      width: 20px;
      height: 20px;
      border-right: 2px solid var(--accent-orange);
      border-bottom: 2px solid var(--accent-orange);
      transform: rotate(45deg);
    }

    @keyframes bounce {
      0%, 100% { transform: translateX(-50%) translateY(0); }
      50% { transform: translateX(-50%) translateY(10px); }
    }

    /* Timeline Sections */
    .timeline {
      position: relative;
      padding: 8rem 0;
    }

    .timeline::before {
      content: '';
      position: absolute;
      left: 50%;
      top: 0;
      bottom: 0;
      width: 2px;
      background: linear-gradient(180deg, transparent, var(--accent-orange), var(--accent-orange), transparent);
      transform: translateX(-50%);
    }

    .chapter {
      padding: 6rem 0;
      position: relative;
    }

    .chapter-content {
      display: grid;
      grid-template-columns: 1fr 1fr;
      gap: 4rem;
      align-items: center;
    }

    .chapter:nth-child(even) .chapter-content {
      direction: rtl;
    }

    .chapter:nth-child(even) .chapter-content > * {
      direction: ltr;
    }

    .chapter-text {
      padding: 2rem;
    }

    .chapter-year {
      font-family: 'Orbitron', monospace;
      font-size: 0.85rem;
      color: var(--accent-orange);
      letter-spacing: 3px;
      margin-bottom: 1rem;
      display: flex;
      align-items: center;
      gap: 1rem;
    }

    .chapter-year::before {
      content: '';
      width: 30px;
      height: 1px;
      background: var(--accent-orange);
    }

    .chapter h2 {
      font-family: 'Orbitron', monospace;
      font-size: clamp(1.75rem, 4vw, 2.5rem);
      font-weight: 700;
      margin-bottom: 1.5rem;
      color: var(--text-primary);
      line-height: 1.2;
    }

    .chapter p {
      color: var(--text-secondary);
      font-size: 1.05rem;
      margin-bottom: 1.5rem;
    }

    .chapter-visual {
      position: relative;
      height: 400px;
      background: var(--bg-secondary);
      border: 1px solid var(--border-color);
      display: flex;
      align-items: center;
      justify-content: center;
      overflow: hidden;
    }

    .chapter-visual::before {
      content: '';
      position: absolute;
      inset: 0;
      background: linear-gradient(135deg, rgba(255, 149, 0, 0.05) 0%, transparent 50%);
    }

    .visual-icon {
      font-size: 6rem;
      opacity: 0.15;
      filter: blur(1px);
    }

    .terminal-box {
      background: #000;
      border: 1px solid var(--accent-orange);
      padding: 1.5rem;
      font-family: 'Space Mono', monospace;
      font-size: 0.85rem;
      color: var(--accent-amber);
      position: relative;
      max-width: 90%;
      box-shadow: 0 0 30px rgba(255, 149, 0, 0.2), inset 0 0 30px rgba(0,0,0,0.5);
    }

    .terminal-box::before {
      content: '● ● ●';
      position: absolute;
      top: -1.5rem;
      left: 0;
      font-size: 0.5rem;
      letter-spacing: 3px;
      color: var(--text-muted);
    }

    .terminal-line {
      margin-bottom: 0.5rem;
      opacity: 0;
      animation: typeIn 0.5s ease forwards;
    }

    .terminal-line:nth-child(1) { animation-delay: 0.5s; }
    .terminal-line:nth-child(2) { animation-delay: 1s; }
    .terminal-line:nth-child(3) { animation-delay: 1.5s; }
    .terminal-line:nth-child(4) { animation-delay: 2s; }

    @keyframes typeIn {
      from { opacity: 0; transform: translateX(-10px); }
      to { opacity: 1; transform: translateX(0); }
    }

    .terminal-cursor {
      display: inline-block;
      width: 8px;
      height: 16px;
      background: var(--accent-orange);
      animation: blink 1s step-end infinite;
      vertical-align: middle;
      margin-left: 5px;
    }

    @keyframes blink {
      50% { opacity: 0; }
    }

    /* Stats Section */
    .stats-section {
      padding: 8rem 0;
      background: var(--bg-secondary);
      border-top: 1px solid var(--border-color);
      border-bottom: 1px solid var(--border-color);
    }

    .stats-grid {
      display: grid;
      grid-template-columns: repeat(4, 1fr);
      gap: 2rem;
    }

    .stat-card {
      text-align: center;
      padding: 2rem;
      background: var(--bg-primary);
      border: 1px solid var(--border-color);
      position: relative;
      overflow: hidden;
      transition: transform 0.3s ease, box-shadow 0.3s ease;
    }

    .stat-card:hover {
      transform: translateY(-5px);
      box-shadow: 0 10px 40px rgba(255, 149, 0, 0.1);
      border-color: var(--accent-orange);
    }

    .stat-card::before {
      content: '';
      position: absolute;
      top: 0;
      left: 0;
      right: 0;
      height: 2px;
      background: var(--gradient-orange);
      opacity: 0;
      transition: opacity 0.3s ease;
    }

    .stat-card:hover::before {
      opacity: 1;
    }

    .stat-number {
      font-family: 'Orbitron', monospace;
      font-size: 3rem;
      font-weight: 800;
      color: var(--accent-orange);
      text-shadow: 0 0 30px rgba(255, 149, 0, 0.3);
      margin-bottom: 0.5rem;
    }

    .stat-label {
      font-family: 'Space Mono', monospace;
      font-size: 0.7rem;
      letter-spacing: 2px;
      text-transform: uppercase;
      color: var(--text-muted);
    }

    /* Quote Section */
    .quote-section {
      padding: 10rem 0;
      position: relative;
      background: var(--bg-primary);
    }

    .quote-section::before {
      content: '"';
      position: absolute;
      top: 3rem;
      left: 10%;
      font-family: 'Orbitron', monospace;
      font-size: 20rem;
      color: var(--border-color);
      opacity: 0.3;
      line-height: 1;
    }

    blockquote {
      font-size: clamp(1.5rem, 3vw, 2.25rem);
      font-weight: 300;
      color: var(--text-primary);
      max-width: 800px;
      margin: 0 auto;
      text-align: center;
      position: relative;
      z-index: 10;
    }

    blockquote cite {
      display: block;
      margin-top: 2rem;
      font-family: 'Space Mono', monospace;
      font-size: 0.85rem;
      color: var(--accent-orange);
      font-style: normal;
      letter-spacing: 2px;
    }

    /* Services Grid */
    .services-section {
      padding: 8rem 0;
      background: var(--bg-secondary);
    }

    .section-header {
      text-align: center;
      margin-bottom: 4rem;
    }

    .section-header h2 {
      font-family: 'Orbitron', monospace;
      font-size: clamp(2rem, 4vw, 3rem);
      font-weight: 700;
      margin-bottom: 1rem;
    }

    .section-header p {
      color: var(--text-secondary);
      max-width: 600px;
      margin: 0 auto;
    }

    .services-grid {
      display: grid;
      grid-template-columns: repeat(3, 1fr);
      gap: 1.5rem;
    }

    .service-card {
      background: var(--bg-primary);
      border: 1px solid var(--border-color);
      padding: 2rem;
      transition: all 0.3s ease;
      position: relative;
      overflow: hidden;
    }

    .service-card::before {
      content: '';
      position: absolute;
      top: 0;
      left: -100%;
      width: 100%;
      height: 100%;
      background: linear-gradient(90deg, transparent, rgba(255, 149, 0, 0.05), transparent);
      transition: left 0.5s ease;
    }

    .service-card:hover::before {
      left: 100%;
    }

    .service-card:hover {
      border-color: var(--accent-orange);
      transform: translateY(-3px);
    }

    .service-year {
      font-family: 'Orbitron', monospace;
      font-size: 0.7rem;
      color: var(--accent-orange);
      letter-spacing: 2px;
      margin-bottom: 0.75rem;
    }

    .service-card h3 {
      font-family: 'Orbitron', monospace;
      font-size: 1.1rem;
      font-weight: 600;
      margin-bottom: 0.75rem;
      color: var(--text-primary);
    }

    .service-card p {
      font-size: 0.9rem;
      color: var(--text-secondary);
      line-height: 1.6;
    }

    /* Footer */
    footer {
      padding: 4rem 0;
      background: var(--bg-primary);
      border-top: 1px solid var(--border-color);
    }

    .footer-content {
      display: flex;
      justify-content: space-between;
      align-items: center;
    }

    .footer-logo {
      font-family: 'Orbitron', monospace;
      font-size: 1rem;
      font-weight: 700;
      color: var(--accent-orange);
      letter-spacing: 2px;
    }

    .footer-text {
      font-family: 'Space Mono', monospace;
      font-size: 0.75rem;
      color: var(--text-muted);
      letter-spacing: 1px;
    }

    /* Animations on Scroll */
    .fade-in {
      opacity: 0;
      transform: translateY(40px);
      transition: opacity 0.8s ease, transform 0.8s ease;
    }

    .fade-in.visible {
      opacity: 1;
      transform: translateY(0);
    }

    /* Responsive Design */
    @media (max-width: 1024px) {
      .chapter-content {
        grid-template-columns: 1fr;
        gap: 2rem;
      }

      .chapter:nth-child(even) .chapter-content {
        direction: ltr;
      }

      .timeline::before {
        left: 2rem;
      }

      .stats-grid {
        grid-template-columns: repeat(2, 1fr);
      }

      .services-grid {
        grid-template-columns: repeat(2, 1fr);
      }
    }

    @media (max-width: 768px) {
      .nav-links {
        display: none;
      }

      .hero-year {
        font-size: 4rem;
        bottom: 5%;
        right: 2%;
      }

      .stats-grid {
        grid-template-columns: 1fr;
      }

      .services-grid {
        grid-template-columns: 1fr;
      }

      .chapter-visual {
        height: 300px;
      }

      .footer-content {
        flex-direction: column;
        gap: 1rem;
        text-align: center;
      }
    }
  </style>
</head>

<body>
  <!-- Navigation -->
  <nav>
    <div class="container">
      <a href="#" class="logo">AWS_STORY</a>
      <ul class="nav-links">
        <li><a href="#origins">Origins</a></li>
        <li><a href="#breakthrough">Breakthrough</a></li>
        <li><a href="#evolution">Evolution</a></li>
        <li><a href="#today">Today</a></li>
      </ul>
    </div>
  </nav>

  <!-- Hero Section -->
  <header class="hero">
    <div class="hero-bg"></div>
    <div class="grid-overlay"></div>
    <div class="hero-content">
      <span class="hero-badge">A Digital Chronicle</span>
      <h1>From Bookstore to Cloud Giant</h1>
      <p class="hero-subtitle">The untold story of how Amazon's internal infrastructure crisis sparked a revolution that would reshape the internet forever.</p>
    </div>
    <span class="hero-year">2006</span>
    <div class="scroll-indicator">
      <span>Scroll to explore</span>
      <div class="arrow"></div>
    </div>
  </header>

  <!-- Timeline -->
  <main class="timeline">
    <!-- Chapter 1: The Problem -->
    <section class="chapter" id="origins">
      <div class="container">
        <div class="chapter-content fade-in">
          <div class="chapter-text">
            <span class="chapter-year">2000 - 2003</span>
            <h2>The Infrastructure Crisis</h2>
            <p>In the early 2000s, Amazon was growing faster than its infrastructure could handle. Every new feature, every holiday season became a battle against their own systems. Engineers spent more time firefighting than innovating.</p>
            <p>The monolithic architecture that powered the bookstore was crumbling under the weight of millions of customers. Something had to change.</p>
          </div>
          <div class="chapter-visual">
            <div class="terminal-box">
              <div class="terminal-line">> SERVER_LOAD: CRITICAL</div>
              <div class="terminal-line">> RESPONSE_TIME: 8.2s</div>
              <div class="terminal-line">> ENGINEERS_AVAILABLE: 12</div>
              <div class="terminal-line">> STATUS: FIREFIGHTING<span class="terminal-cursor"></span></div>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- Chapter 2: The Insight -->
    <section class="chapter" id="breakthrough">
      <div class="container">
        <div class="chapter-content fade-in">
          <div class="chapter-text">
            <span class="chapter-year">2003 - 2004</span>
            <h2>The "Aha" Moment</h2>
            <p>A pivotal retreat in 2003 changed everything. Amazon's leadership realized they had accidentally become experts at something no one else could do: running massive-scale infrastructure.</p>
            <p>What if they could package this expertise? What if the same infrastructure powering Amazon.com could power anyone's application?</p>
          </div>
          <div class="chapter-visual">
            <div class="terminal-box">
              <div class="terminal-line">> INSIGHT: INFRASTRUCTURE_AS_SERVICE</div>
              <div class="terminal-line">> MARKET_POTENTIAL: UNLIMITED</div>
              <div class="terminal-line">> COMPETITION: NONE</div>
              <div class="terminal-line">> DECISION: PROCEED<span class="terminal-cursor"></span></div>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- Chapter 3: The Launch -->
    <section class="chapter">
      <div class="container">
        <div class="chapter-content fade-in">
          <div class="chapter-text">
            <span class="chapter-year">MARCH 2006</span>
            <h2>S3: The First Brick</h2>
            <p>Amazon Simple Storage Service launched quietly, almost experimentally. For $0.15 per gigabyte, anyone could store data in Amazon's cloud. No servers to manage, no capacity to plan.</p>
            <p>The tech world was skeptical. Why would anyone trust their data to a bookstore?</p>
          </div>
          <div class="chapter-visual">
            <div class="terminal-box">
              <div class="terminal-line">> aws s3 create-bucket</div>
              <div class="terminal-line">> BUCKET: my-first-bucket</div>
              <div class="terminal-line">> REGION: us-east-1</div>
              <div class="terminal-line">> STATUS: CREATED<span class="terminal-cursor"></span></div>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- Chapter 4: EC2 -->
    <section class="chapter" id="evolution">
      <div class="container">
        <div class="chapter-content fade-in">
          <div class="chapter-text">
            <span class="chapter-year">AUGUST 2006</span>
            <h2>EC2: Compute on Demand</h2>
            <p>Five months later, Elastic Compute Cloud changed everything. Virtual servers, available in minutes, billed by the hour. Startups that once needed millions in funding could now launch for pennies.</p>
            <p>The barrier to entry for building internet companies had just been demolished.</p>
          </div>
          <div class="chapter-visual">
            <div class="terminal-box">
              <div class="terminal-line">> aws ec2 run-instances</div>
              <div class="terminal-line">> TYPE: m1.small</div>
              <div class="terminal-line">> COST: $0.10/hour</div>
              <div class="terminal-line">> INSTANCE: i-1234567<span class="terminal-cursor"></span></div>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- Chapter 5: Today -->
    <section class="chapter" id="today">
      <div class="container">
        <div class="chapter-content fade-in">
          <div class="chapter-text">
            <span class="chapter-year">2024 & BEYOND</span>
            <h2>The Cloud That Runs the World</h2>
            <p>Today, AWS operates from 33 geographic regions, powers millions of active customers, and offers over 200 fully featured services. From Netflix streaming your favorite shows to NASA exploring Mars.</p>
            <p>What started as a solution to Amazon's own problems became the foundation of the modern internet.</p>
          </div>
          <div class="chapter-visual">
            <div class="terminal-box">
              <div class="terminal-line">> SERVICES: 200+</div>
              <div class="terminal-line">> REGIONS: 33</div>
              <div class="terminal-line">> CUSTOMERS: MILLIONS</div>
              <div class="terminal-line">> STATUS: WORLD_LEADER<span class="terminal-cursor"></span></div>
            </div>
          </div>
        </div>
      </div>
    </section>
  </main>

  <!-- Stats Section -->
  <section class="stats-section">
    <div class="container">
      <div class="stats-grid">
        <div class="stat-card fade-in">
          <div class="stat-number">33</div>
          <div class="stat-label">Regions Worldwide</div>
        </div>
        <div class="stat-card fade-in">
          <div class="stat-number">200+</div>
          <div class="stat-label">Cloud Services</div>
        </div>
        <div class="stat-card fade-in">
          <div class="stat-number">$90B</div>
          <div class="stat-label">Annual Revenue</div>
        </div>
        <div class="stat-card fade-in">
          <div class="stat-number">31%</div>
          <div class="stat-label">Market Share</div>
        </div>
      </div>
    </div>
  </section>

  <!-- Quote Section -->
  <section class="quote-section">
    <div class="container">
      <blockquote class="fade-in">
        "We've had three big ideas at Amazon that we've stuck with... Put the customer first. Invent. And be patient."
        <cite>— Jeff Bezos, Founder</cite>
      </blockquote>
    </div>
  </section>

  <!-- Services Evolution -->
  <section class="services-section">
    <div class="container">
      <div class="section-header fade-in">
        <h2>The Service Evolution</h2>
        <p>From two services to over 200. A timeline of innovation.</p>
      </div>
      <div class="services-grid">
        <div class="service-card fade-in">
          <span class="service-year">2006</span>
          <h3>S3 & EC2</h3>
          <p>Storage and compute. The foundation blocks that started it all.</p>
        </div>
        <div class="service-card fade-in">
          <span class="service-year">2009</span>
          <h3>RDS & VPC</h3>
          <p>Managed databases and private networking enter the cloud.</p>
        </div>
        <div class="service-card fade-in">
          <span class="service-year">2012</span>
          <h3>DynamoDB & Redshift</h3>
          <p>NoSQL at scale and data warehousing for the masses.</p>
        </div>
        <div class="service-card fade-in">
          <span class="service-year">2014</span>
          <h3>Lambda</h3>
          <p>Serverless computing. Run code without thinking about servers.</p>
        </div>
        <div class="service-card fade-in">
          <span class="service-year">2017</span>
          <h3>SageMaker</h3>
          <p>Machine learning made accessible to every developer.</p>
        </div>
        <div class="service-card fade-in">
          <span class="service-year">2023</span>
          <h3>Bedrock</h3>
          <p>Generative AI foundations for the next era of computing.</p>
        </div>
      </div>
    </div>
  </section>

  <!-- Footer -->
  <footer>
    <div class="container">
      <div class="footer-content">
        <span class="footer-logo">AWS_STORY</span>
        <span class="footer-text">A Retro-Futuristic Chronicle • 2006 — 2024</span>
      </div>
    </div>
  </footer>

  <!-- Scroll Animation Script -->
  <script>
    document.addEventListener('DOMContentLoaded', function() {
      const observerOptions = {
        threshold: 0.1,
        rootMargin: '0px 0px -50px 0px'
      };

      const observer = new IntersectionObserver((entries) => {
        entries.forEach(entry => {
          if (entry.isIntersecting) {
            entry.target.classList.add('visible');
          }
        });
      }, observerOptions);

      document.querySelectorAll('.fade-in').forEach(el => {
        observer.observe(el);
      });

      // Smooth scroll for nav links
      document.querySelectorAll('a[href^="#"]').forEach(anchor => {
        anchor.addEventListener('click', function(e) {
          e.preventDefault();
          const target = document.querySelector(this.getAttribute('href'));
          if (target) {
            target.scrollIntoView({ behavior: 'smooth', block: 'start' });
          }
        });
      });
    });
  </script>
</body>
</html>
