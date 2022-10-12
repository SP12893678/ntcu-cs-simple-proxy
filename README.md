# NTCU-CS-Simple-Proxy

---

**臺中教育大學-資訊工程學系-網頁代理伺服器**

## Environment

---

- **OS ( any )  `Ubuntu recommend`**
- **Docker ( latest )**
- **Docker-Compose ( latest )**
- **Git ( latest )**

## Deploy Step

---

在上述環境安裝完畢後，並且也將專案Clone到佈署的虛擬機後就可執行以下步驟

1. 設定Nginx Config
    
    在nginx目錄中有2個設定檔：
    
    - website.conf：系網代理設定
    - backend.conf：系網代理後端服務設定
    
    這2個設定檔中皆須將`<domain>`改為欲要連到該服務之域名，另外website.conf中還須將`<proxy_url>`改為欲代理之系網URL
    
2. 設定`.env`環境變數
    
    新增.env檔案，以下變數分別代表mongodb資料庫的使用者和密碼
    
    ```json
    DB_USER=
    DB_PASSWORD=
    ```
    
3. 啟動服務
    
    ```json
    docker-compose up
    ```
    
    <aside>
    💡 若出現XXX(container_name) exited code with 0表示該服務因為錯誤而停止了
    
    </aside>
    
    PS. ctrl + z可以跳出docker console畫面 (服務仍然會啟動)
    
4. 確認服務是否啟動
    
    ```json
    docker ps
    ```