# Exemplo Robot Framework + Selenium e como Integrar com o TestRail
## I. Pré-Requisitos
### 1. Python
* Instale o python [aqui](https://www.python.org/downloads/)
**Nota**: Tenha certeza que a opção adicionar ao `PATH` foi marcada na instalação
![Exemplo](https://user-images.githubusercontent.com/58189901/193078650-903fad50-8608-4d8e-877b-a8a923765716.png)
## 2. TestRail
* [Crie uma conta aqui](https://secure.gurock.com/customers/testrail/trial?)
### 2.1. Configurando o TestRail
* Habilite a TestRail API indo em Administration > Site Settings, clique na guia API e marcando a opção Enable API.
  ![Exemplo](https://user-images.githubusercontent.com/58189901/193078387-7bdd1e64-dc2b-4cef-b4d7-9cf8141b8967.png)
* Crie um **Custom Field** para mapear o código dos casos de teste automatizados para os casos de teste do TestRail. Você pode fazer isso acessando Administration > Customizations e clicando em Add Field. Depois de chegar à tela de criação de campo, há dois requisitos para esse campo personalizado:
* O System Name tem que ser **automation_id**
* O Type tem que ser **String**

![Exemplo](https://user-images.githubusercontent.com/58189901/193080251-edaabf79-a60e-499d-ad1e-54576ba9fb64.png)
### 3. Clone esse projeto
* `git clone https://github.com/arlisonmarreiro/Testrail-RobotFramework`
### 4. Robot Framework e Libraries Necessárias
**Nota** Tenha certeza que está dentro da pasta "Testrail-RobotFramework"
*  Abra o terminal e digite o seguinte comando `pip install -r requirements.txt`

### 5. Baixar webdrivers
Você pode baixar os webdrivers nos links abaixo:
 * [Chrome](https://sites.google.com/a/chromium.org/chromedriver/downloads](https://sites.google.com/chromium.org/driver/))
 * [Firefox (Gecko)](https://github.com/mozilla/geckodriver/releases)
### 6. Adicione os webdrivers ao PATH
* Copie e cole os webdrivers para o diretorio C:\Users\SeuUsuario\AppData\Local\Programs\Python\Python310\Scripts
## II. Editor de texto ou IDE
* [Visual Studio Code](https://code.visualstudio.com/download)
## III. Executar um exemplo
**Nota** Dentro da pagina raiz:
* Digite o seguinte comando no terminal
`robot -d .\test\logs -x junit-report.xml .\test\features\login_add_to_cart.robot`
![Terminal_robot](https://user-images.githubusercontent.com/58189901/193938154-40ba640e-a47a-409d-bbfe-a39ec4f3736e.png)
* **-d** significa que vai criar um diretório chamado **logs** dentro de **test** para armazenar os logs
* **-x** significa que vai criar um arquivo xml com nome de junit-report.xml
### 7. Mandando resultados para o TestRail
**Nota** Certifique-se de estar dentro da pasta logs
* Utilizando seguinte comando `trcli -y -h Insira sua URL --project "Insira o nome do seu projeto" --username Insira seu email --password Insira sua senha parse_junit --title "RF Automated Tests" -f junit-report.xml`
![Terminal_testrail](https://user-images.githubusercontent.com/58189901/193938331-d4ddeab5-228b-4fee-a48f-ba2272ac7ed2.png)

* **-y, --yes** responda 'yes' a todos os prompts sobre a criação automática
* **-h, --host** hostname da sua instancia (sua url que foi criada junto a criação da conta)
* **--project** o nome do seu projeto do TestRail
* **--username** seu nome de usuário (email de criação)
* **--password** sua senha
* **parse_junit** Use-o para analisar e manipular arquivos XML das results criadas do robot
* **title** o titulo da sua TestRun que vai ser criada no TestRail (Vai na aba TEST RUNS & RESULTS)
* **-f, --file** Nome do arquivo e o caminho

## Ao fim da execução, esse vai ser o resultado dentro do TestRail
![TestRun](https://user-images.githubusercontent.com/58189901/193099787-056bf3e1-35ff-429f-abdf-371897f83214.png)






