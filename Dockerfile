# Sử dụng Node.js làm base image
FROM node:14

# Thiết lập thư mục làm việc
WORKDIR /usr/src/app

# Sao chép package.json và package-lock.json
COPY package*.json ./

# Cài đặt các phụ thuộc
RUN npm install

# Sao chép mã nguồn vào container
COPY . .

# Mở cổng mà ứng dụng sẽ chạy (nếu cần)
EXPOSE 3000

# Lệnh để chạy ứng dụng và tự động khởi động lại sau mỗi 40 phút
CMD ["sh", "-c", "while true; do node xplus.js; sleep 2400; done"]
 
