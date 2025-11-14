
# auth-api-programa-ai

API de autenticação desenvolvida como parte do curso de AppSec da **Programa.AI**.  
Este projeto utiliza **Flask**, **Flask-Migrate** e **SQLAlchemy** para gerenciar autenticação e migrações de banco de dados.

---

## 🚀 Tecnologias utilizadas
- Python 3.x  
- Flask  
- Flask-Migrate  
- SQLAlchemy  
- SQLite (ou outro banco configurado)

---

## 📦 Pré-requisitos

Antes de rodar o projeto, você precisa ter instalado:

- Python 3.x
- pip
- virtualenv (opcional, mas recomendado)

---

## 🛠️ Como rodar o projeto

### 1️⃣ Clone o repositório

```sh
git clone https://github.com/seu-usuario/auth-api-programa-ai.git
cd auth-api-programa-ai
```

### 2️⃣ Crie e ative o ambiente virtual (opcional)

**Mac/Linux:**
```sh
python3 -m venv venv
source venv/bin/activate
```

**Windows:**
```sh
python -m venv venv
venv\Scripts\activate
```

### 3️⃣ Instale as dependências

```sh
pip install -r requirements.txt
```

---

## 🗃️ Configuração do Banco de Dados

O projeto utiliza Flask-Migrate para gerenciar as migrações.

### 🔧 1. Inicializar as migrações
```sh
flask db init
```

### 🧱 2. Criar as migrações
```sh
flask db migrate -m "init: users"
```

### 🗂️ 3. Aplicar as migrações
```sh
flask db upgrade
```

---

## ▶️ Rodar a aplicação

Com tudo configurado, execute:

```sh
flask run
```

A API estará disponível em:

```
http://127.0.0.1:5000
```

---

## 📁 Estrutura típica do projeto

```
auth-api-programa-ai/
│
├── app/
│   ├── models/
│   ├── routes/
│   ├── __init__.py
│   ├── extensions.py
│   └── config.py
│
├── migrations/
├── venv/
├── requirements.txt
└── README.md
```

---

## 📄 Licença
Projeto desenvolvido para fins educacionais no curso **Programa.AI — AppSec**.

## Autor - Leandro RC 2025