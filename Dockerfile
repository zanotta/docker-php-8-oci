FROM webdevops/php-apache:8.2

# Instalação de dependências
RUN apt-get update && \
    apt-get install -y libaio1 libaio-dev wget && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Reinicia o serviço Apache
RUN service apache2 restart