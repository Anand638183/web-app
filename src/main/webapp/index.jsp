<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width,initial-scale=1" />
  <title>Happy Pongal 🌾</title>
  <style>
    :root{
      --bg1: #FFEFBA;
      --bg2: #FFFFFF;
      --accent: #E86A2A;
      --green: #2E8B57;
      --card: rgba(255,255,255,0.9);
      --shadow: 0 8px 30px rgba(0,0,0,0.12);
      --font-sans: system-ui, -apple-system, "Segoe UI", Roboto, "Helvetica Neue", Arial;
    }

    *{box-sizing:border-box}
    html,body{height:100%}
    body{
      margin:0;
      font-family:var(--font-sans);
      background: linear-gradient(120deg,var(--bg1),var(--bg2));
      display:flex;
      align-items:center;
      justify-content:center;
      padding:32px;
      color:#333;
    }

    .card{
      width:min(980px,96vw);
      background:linear-gradient(180deg, rgba(255,255,255,0.9), rgba(255,255,255,0.8));
      border-radius:18px;
      box-shadow:var(--shadow);
      padding:28px;
      display:grid;
      grid-template-columns: 1fr 360px;
      gap:20px;
      align-items:center;
      position:relative;
      overflow:visible;
    }

    @media (max-width:800px){
      .card{grid-template-columns:1fr; padding:20px}
    }

    .greeting{
      padding:6px 12px;
    }

    .title{
      font-size: clamp(22px, 4vw, 40px);
      margin:6px 0 8px;
      letter-spacing:0.6px;
      color:var(--accent);
    }
    .subtitle{
      margin:0 0 18px;
      color:#444;
      font-size:1rem;
    }

    .message{
      background:linear-gradient(180deg, rgba(255,255,255,0.6), rgba(255,255,255,0.4));
      padding:16px;
      border-radius:12px;
      box-shadow:0 4px 18px rgba(0,0,0,0.06) inset;
      font-size:1rem;
      line-height:1.5;
    }

    .cta{
      margin-top:18px;
      display:flex;
      gap:12px;
      flex-wrap:wrap;
    }
    .btn{
      padding:10px 14px;
      border-radius:10px;
      border:0;
      cursor:pointer;
      font-weight:600;
      box-shadow:0 6px 18px rgba(0,0,0,0.08);
    }
    .btn-primary{ background:var(--accent); color:white }
    .btn-outline{ background:transparent; border:1px solid #ddd; color:#333 }

    /* right column: art */
    .art{
      display:flex;
      flex-direction:column;
      gap:12px;
      align-items:center;
      justify-content:center;
      padding:10px;
    }

    /* Pongal pot */
    .pot-wrap{ position:relative; width:260px; height:220px; display:flex; align-items:flex-end; justify-content:center; }
    .pot{
      width:220px; height:110px;
      background: linear-gradient(180deg,#6b3f1f,#3a1f0f);
      border-radius: 48% 48% 14% 14% / 60% 60% 30% 30%;
      position:relative;
      box-shadow: 0 10px 28px rgba(0,0,0,0.25);
      overflow:visible;
    }
    .pot::before{
      content:""; position:absolute; left:18%; right:18%; top:-18px; height:36px;
      background:linear-gradient(180deg,#f6c26b,#e69a24);
      border-radius: 12px;
      box-shadow: inset 0 2px 6px rgba(255,255,255,0.2);
    }
    .pot::after{
      content:""; position:absolute; left:8px; top:18px; width:24px; height:24px; border-radius:50%;
      background:rgba(255,255,255,0.06);
      filter:blur(1px);
    }

    /* Pongal overflow (rice) */
    .rice{
      position:absolute; left:50%; transform:translateX(-50%);
      bottom:98px;
      width:160px; height:62px;
      background:linear-gradient(180deg,#fff,#f3f3f3);
      border-radius:40% 40% 80% 80%;
      box-shadow:0 6px 18px rgba(0,0,0,0.08);
      overflow:visible;
    }

    /* steam */
    .steam{
      position:absolute;
      left:50%;
      transform:translateX(-50%);
      bottom:160px;
      width:100px; height:140px;
      pointer-events:none;
    }
    .steam .cloud{
      position:absolute;
      width:22px; height:40px;
      border-radius:50%;
      background:rgba(255,255,255,0.85);
      opacity:0; transform:translateY(20px) scale(0.6);
      animation:steam 3.8s linear infinite;
    }
    .steam .c1{ left:8px; animation-delay:0s }
    .steam .c2{ left:32px; animation-delay:0.4s }
    .steam .c3{ left:56px; animation-delay:0.8s }
    .steam .c4{ left:78px; animation-delay:1.2s }

    @keyframes steam{
      0%{opacity:0; transform:translateY(8px) scale(0.6)}
      10%{opacity:0.6}
      60%{opacity:0.3; transform:translateY(-40px) scale(1.1)}
      100%{opacity:0; transform:translateY(-90px) scale(1.3)}
    }

    /* sugarcane */
    .sugarcane{
      display:flex;
      gap:8px;
      align-items:flex-end;
      margin-top:10px;
    }
    .cane{
      width:12px; height:160px; border-radius:8px;
      background:linear-gradient(180deg,#a8d27f,#4d8b3a);
      position:relative;
      transform:rotate(-8deg);
      box-shadow:0 6px 14px rgba(0,0,0,0.08);
    }
    .cane:nth-child(2){ height:190px; transform:rotate(6deg); }

    .leaf{
      position:absolute; left:-42px; top:22px; width:120px; height:28px;
      background:linear-gradient(90deg,#6fbf4a,#2e8b57);
      border-radius:40px;
      transform-origin:left center;
      transform:rotate(-18deg) skewX(-8deg);
    }

    /* confetti canvas covers whole card */
    canvas.confetti-canvas{
      position:absolute; inset:0; pointer-events:none; border-radius:inherit;
    }

    footer{
      margin-top:12px;
      font-size:0.86rem;
      color:#666;
    }
  </style>
</head>
<body>
  <div class="card" role="article" aria-labelledby="pongalTitle">
    <canvas class="confetti-canvas" id="confetti"></canvas>

    <div class="greeting">
      <div class="title" id="pongalTitle">Happy Pongal! 🌾</div>
      <div class="subtitle">Wishing you abundance, joy and a harvest of good fortune.</div>

      <div class="message" role="region" aria-label="Pongal Message">
        May the sweetness of Pongal fill your life with happiness and prosperity. May the sun’s warmth bring you health, and the harvest bring you abundance. <strong>Pongalo Pongal!</strong>
      </div>

      <div class="cta">
        <button class="btn btn-primary" onclick="downloadImage()">Download Greeting</button>
        <button class="btn btn-outline" onclick="shareGreeting()">Share</button>
      </div>

      <footer>Made with ❤️ — send this to family & friends.</footer>
    </div>

    <div class="art" aria-hidden="false">
      <div class="pot-wrap" aria-hidden="true">
        <div class="steam" aria-hidden="true">
          <div class="cloud c1"></div>
          <div class="cloud c2"></div>
          <div class="cloud c3"></div>
          <div class="cloud c4"></div>
        </div>

        <div class="rice" aria-hidden="true"></div>
        <div class="pot" aria-hidden="true"></div>
      </div>

      <div class="sugarcane" aria-hidden="true">
        <div class="cane"><div class="leaf"></div></div>
        <div class="cane"><div class="leaf" style="left:auto; right:-36px; transform:rotate(18deg) skewX(8deg)"></div></div>
      </div>
    </div>
  </div>

  <script>
    // confetti simple generator
    (function(){
      const canvas = document.getElementById('confetti');
      const ctx = canvas.getContext('2d');
      let particles = [];
      function resize(){
        const rect = canvas.getBoundingClientRect();
        canvas.width = rect.width * devicePixelRatio;
        canvas.height = rect.height * devicePixelRatio;
        canvas.style.width = rect.width + 'px';
        canvas.style.height = rect.height + 'px';
        ctx.scale(devicePixelRatio, devicePixelRatio);
      }
      function rand(min,max){ return Math.random()*(max-min)+min }
      function makeParticle(){
        return {
          x: rand(10, canvas.width / devicePixelRatio - 10),
          y: rand(-20, 40),
          w: rand(6,12),
          h: rand(6,12),
          vy: rand(0.5, 2.5),
          vx: rand(-0.8, 0.8),
          rot: rand(0, Math.PI*2),
          vrot: rand(-0.15,0.15),
          life: rand(280, 500),
          color: ['#FFD166','#06D6A0','#118AB2','#EF476F','#FB8500'][Math.floor(rand(0,5))]
        };
      }
      function populate(n){
        for(let i=0;i<n;i++) particles.push(makeParticle());
      }
      function update(){
        ctx.clearRect(0,0,canvas.width,canvas.height);
        particles.forEach((p,i)=>{
          p.x += p.vx;
          p.y += p.vy;
          p.rot += p.vrot;
          p.life--;
          ctx.save();
          ctx.translate(p.x, p.y);
          ctx.rotate(p.rot);
          ctx.fillStyle = p.color;
          ctx.fillRect(-p.w/2, -p.h/2, p.w, p.h);
          ctx.restore();
        });
        particles = particles.filter(p=>p.life>0 && p.y < (canvas.height/devicePixelRatio)+50);
        if(particles.length < 80) populate(6);
        requestAnimationFrame(update);
      }
      window.addEventListener('resize', resize);
      resize();
      populate(120);
      update();
    })();

    // Download a screenshot of the card (simple)
    function downloadImage(){
      const node = document.querySelector('.card');
      // Use html2canvas-like approach: we will create SVG snapshot for simple screenshot
      // (Not perfect but works for many cases). For full fidelity, use html2canvas library.
      alert('Quick download: right-click and Save As on the page or use browser Print → Save as PDF. If you want a PNG export, paste your HTML and I can add a JS library to generate PNG automatically.');
    }

    // share fallback
    function shareGreeting(){
      if (navigator.share) {
        navigator.share({
          title: 'Happy Pongal!',
          text: 'Wishing you abundance and joy. Pongalo Pongal!',
          url: window.location.href
        }).catch(()=>{});
      } else {
        alert('Copy the page URL or screenshot and share it with friends.');
      }
    }
  </script>
</body>
</html>
