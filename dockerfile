# nginxの最新版をベースイメージとして使用
FROM nginx:latest

# nginxのデフォルト設定を削除
RUN rm /etc/nginx/conf.d/default.conf

# 自分のnginxの設定ファイルをコンテナにコピー
COPY nginx.conf /etc/nginx/conf.d

# 静的なコンテンツをコンテナの適切な場所にコピー
COPY . /usr/share/nginx/html