# 🦢 Mascote Virtual Interativo para iOS

## 📌 Visão Geral
Este é um aplicativo inspirado no **Desktop Goose**, projetado para iOS, onde um mascote virtual interativo aparece na tela do usuário e interage de forma divertida e caótica. O mascote pode se mover sozinho, reagir a toques e exibir mensagens inesperadas.

## 🚀 Tecnologias Utilizadas
- **Flutter + Dart** (para desenvolvimento multiplataforma)
- **VS Code** (ambiente de desenvolvimento)
- **Flutter SDK** (para compilar e rodar o app)

## 🛠️ Instalação e Configuração
### 1️⃣ Configurar o Ambiente de Desenvolvimento
1. **Baixar e instalar o Flutter SDK**:  
   👉 [Download Flutter](https://docs.flutter.dev/get-started/install/windows)
2. **Adicionar Flutter ao Path**:
   - Extraia o Flutter para `C:\flutter`.
   - Adicione `C:\flutter\bin` às variáveis de ambiente do Windows.
   - Verifique a instalação com:
     ```sh
     flutter doctor
     ```
3. **Instalar o VS Code e o Plugin do Flutter**:
   - No VS Code, vá até **Extensões** (`Ctrl+Shift+X`).
   - Pesquise e instale **Flutter** e **Dart**.

### 2️⃣ Criar um Novo Projeto Flutter
Abra o terminal e execute:
```sh
flutter create meu_mascote
cd meu_mascote
code .
```
Isso criará e abrirá o projeto no **VS Code**.

### 3️⃣ Editar o Código do App
Abra o arquivo **`lib/main.dart`** e substitua pelo seguinte código:
```dart
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("Meu Mascote Virtual")),
        body: MascotScreen(),
      ),
    );
  }
}

class MascotScreen extends StatefulWidget {
  @override
  _MascotScreenState createState() => _MascotScreenState();
}

class _MascotScreenState extends State<MascotScreen> {
  double _x = 100;
  double _y = 100;

  void _moveMascot() {
    setState(() {
      _x = (_x + 50) % 300;
      _y = (_y + 50) % 600;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          left: _x,
          top: _y,
          child: GestureDetector(
            onTap: _moveMascot,
            child: Image.asset('assets/mascot.png', width: 100),
          ),
        ),
      ],
    );
  }
}
```

### 4️⃣ Executar o Projeto no Simulador Android
Como não é possível testar diretamente no iOS sem um Mac, podemos testar no Android:
```sh
flutter devices
flutter run
```
Se estiver usando um Mac na nuvem, compile para iOS com:
```sh
flutter build ios
```

## ✨ Funcionalidades Futuras
- 📢 Sons interativos
- 🎭 Mudança de expressões do mascote
- 🔧 Configurações personalizáveis pelo usuário

## 📜 Licença
Este projeto é de **código aberto** e pode ser modificado livremente.

## 📩 Contato
Dúvidas ou sugestões? Entre em contato!

🚀 **Divirta-se desenvolvendo o seu mascote virtual!**

