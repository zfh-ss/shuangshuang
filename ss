<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>幸福时光记录</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        
        body {
            font-family: 'Segoe UI', 'Helvetica Neue', sans-serif;
            color: #333;
            line-height: 1.6;
            background: linear-gradient(135deg, #f5f7fa 0%, #c3cfe2 100%);
            min-height: 100vh;
            padding: 20px;
        }
        
        .container {
            max-width: 1000px;
            margin: 0 auto;
            background: white;
            border-radius: 16px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.08);
            overflow: hidden;
        }
        
        header {
            text-align: center;
            padding: 40px 20px;
            background: linear-gradient(120deg, #e0c3fc 0%, #8ec5fc 100%);
            color: white;
        }
        
        h1 {
            font-size: 2.5rem;
            margin-bottom: 15px;
            font-weight: 400;
            letter-spacing: 1px;
        }
        
        .subtitle {
            font-size: 1.1rem;
            opacity: 0.9;
            font-weight: 300;
            max-width: 500px;
            margin: 0 auto;
        }
        
        .content {
            padding: 30px;
        }
        
        .image-container {
            position: relative;
            width: 100%;
            height: 50vh;
            margin: 30px 0;
            border-radius: 12px;
            overflow: hidden;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
        }
        
        .image-container img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: transform 0.5s ease;
        }
        
        .image-container:hover img {
            transform: scale(1.02);
        }
        
        .countdown-overlay {
            position: absolute;
            bottom: 15%;
            left: 0;
            width: 100%;
            text-align: center;
            background: rgba(0, 0, 0, 0.5);
            padding: 20px 0;
            backdrop-filter: blur(4px);
        }
        
        .countdown {
            display: flex;
            justify-content: center;
            gap: 25px;
            margin-bottom: 10px;
        }
        
        .countdown-item {
            text-align: center;
        }
        
        .countdown-number {
            font-size: 2.2rem;
            font-weight: 300;
            color: white;
            margin-bottom: 3px;
            text-shadow: 1px 1px 3px rgba(0, 0, 0, 0.3);
        }
        
        .countdown-label {
            font-size: 0.8rem;
            color: rgba(255, 255, 255, 0.85);
            text-transform: uppercase;
            letter-spacing: 1px;
        }
        
        .start-date {
            font-size: 1rem;
            color: rgba(255, 255, 255, 0.9);
            margin-top: 10px;
            font-weight: 300;
        }
        
        .message {
            text-align: center;
            max-width: 600px;
            margin: 30px auto;
            padding: 20px;
            background: #f8f9fa;
            border-radius: 10px;
            line-height: 1.8;
            color: #495057;
        }
        
        .photo-links {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(250px, 1fr));
            gap: 15px;
            margin: 30px 0;
        }
        
        .photo-link {
            display: block;
            padding: 15px;
            background: #f8f9fa;
            border-radius: 10px;
            text-decoration: none;
            color: #495057;
            transition: all 0.3s ease;
            text-align: center;
        }
        
        .photo-link:hover {
            background: #e9ecef;
            transform: translateY(-3px);
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
        }
        
        .footer {
            text-align: center;
            padding: 30px 0;
            margin-top: 40px;
            border-top: 1px solid #e9ecef;
            font-size: 0.9rem;
            color: #6c757d;
        }
        
        @media (max-width: 768px) {
            h1 {
                font-size: 2rem;
            }
            
            .countdown {
                gap: 15px;
            }
            
            .countdown-number {
                font-size: 1.8rem;
            }
            
            .image-container {
                height: 40vh;
            }
            
            .photo-links {
                grid-template-columns: 1fr;
            }
        }
        
        @media (max-width: 480px) {
            .countdown {
                gap: 10px;
            }
            
            .countdown-number {
                font-size: 1.5rem;
            }
            
            .countdown-label {
                font-size: 0.7rem;
            }
            
            .start-date {
                font-size: 0.9rem;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <header>
            <h1><i class="fas fa-heart"></i> 幸福计时！</h1>
            <p class="subtitle">珍藏每一刻美好，感恩共同走过的每一天</p >
        </header>
        
        <div class="content">
            <div class="image-container">
                <img src="d1.jpg" alt="我们的纪念图片">
                
                <div class="countdown-overlay">
                    <div class="countdown">
                        <div class="countdown-item">
                            <div class="countdown-number" id="days">0</div>
                            <div class="countdown-label">天</div>
                        </div>
                        <div class="countdown-item">
                            <div class="countdown-number" id="hours">0</div>
                            <div class="countdown-label">时</div>
                        </div>
                        <div class="countdown-item">
                            <div class="countdown-number" id="minutes">0</div>
                            <div class="countdown-label">分</div>
                        </div>
                        <div class="countdown-item">
                            <div class="countdown-number" id="seconds">0</div>
                            <div class="countdown-label">秒</div>
                        </div>
                    </div>
                    <div class="start-date">起始日: 2024年3月22日</div>
                </div>
            </div>
            
            <div class="message">
                <p>这个计时器记录了我们从开始到现在共同度过的每一分每一秒。</p >
            </div>
            
            <div class="photo-links">
                <a href=" " class="photo-link" target="_blank">花花🌼</a >
                <a href="https://wx1.sinaimg.cn/orj360/006cm3Wgly1ho1dh2ee5kj30u01hcgy7.jpg" class="photo-link" target="_blank">教会我川渝蹲</a >
                <a href="https://wx3.sinaimg.cn/mw690/006cm3Wgly1ho1dh3a4k4j30u01407n2.jpg" class="photo-link" target="_blank">海边牵手手👫</a >
                <a href="https://wx3.sinaimg.cn/mw690/006cm3Wgly1ho1dh117quj30k00zkgtv.jpg" class="photo-link" target="_blank">比耶✌</a >
                <a href="https://wx4.sinaimg.cn/mw690/006cm3Wgly1ho1dh51cwaj30k00zk78j.jpg" class="photo-link" target="_blank">酷酷的小细节</a >
                <a href="https://wx4.sinaimg.cn/mw690/006cm3Wgly1ho1dh5ujqkj30u01hc18n.jpg" class="photo-link" target="_blank">不辣！！！🌶</a >
                <a href="https://wx1.sinaimg.cn/mw690/006cm3Wgly1ho1dh6pf5fj313u0tund0.jpg" class="photo-link" target="_blank">好好吃饭</a >
            </div>
            
            <div class="message">
                <p>真的 一定要记住这些瞬间</p >
                <p>强烈的感觉到幸福和被爱的瞬间</p >
                <p>就算很抽象</p >
                <p>也尽量要记录和表达</p >
                <p>在爱的旅途中</p >
                <p>幸福的阈值也许会越来越高</p >
                <p>这表示我们感受到幸福的时刻</p >
                <p>也可能会随之减少</p >
                <p>至少在感受到的时候把它定格保存</p >
                <p>依然还会掉进爱的漩涡</p >
                <p>这些你都在教会我</p >
            </div>
        </div>
        
        <div class="footer">
            <p>幸福时光记录 &copy; 2024 - 珍惜每一刻</p >
        </div>
    </div>

    <script>
        // 设置起始日期
        const startDate = new Date('2024-03-22T00:00:00');
        
        function updateCountdown() {
            const now = new Date();
            const diff = now - startDate;
            
            // 计算天、时、分、秒
            const days = Math.floor(diff / (1000 * 60 * 60 * 24));
            const hours = Math.floor((diff % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
            const minutes = Math.floor((diff % (1000 * 60 * 60)) / (1000 * 60));
            const seconds = Math.floor((diff % (1000 * 60)) / 1000);
            
            // 更新显示
            document.getElementById('days').textContent = days;
            document.getElementById('hours').textContent = hours.toString().padStart(2, '0');
            document.getElementById('minutes').textContent = minutes.toString().padStart(2, '0');
            document.getElementById('seconds').textContent = seconds.toString().padStart(2, '0');
        }
        
        // 初始更新
        updateCountdown();
        
        // 每秒更新一次
        setInterval(updateCountdown, 1000);
    </script>
</body>
</html>
