# Vulnerable Smart Contract

Este repo contiene un smart contract con una vulnerabilidad y otro que explota dicha vulnerabilidad.

## Prerequisitos

- Node.js
- npm
- Hardhat

## Pasos

1. Clona el repo
    ```bash
    git clone https://github.com/your-username/vottun-contracts.git
    cd vottun-contracts
    ```

2. Instala los paquetes
    ```bash
    npm install
    ```

3. Compila los contratos
    ```bash
    npx hardhat compile
    ```

## Deploy

1. Abre una blockchain local
    ```bash
    npx hardhat node
    ```

2. Realiza el deploy del contrato vulnerable
    ```bash
    npx hardhat run --network localhost scripts/deploy_vulnerable.js
    ```

3. Realiza el deploy del contrato que explota la vulnerabilidad
    ```bash
    npx hardhat run --network localhost scripts/deploy_exploit.js
    ```

## Testea la vulnerabilidad

1. Interactúa con el contrato exploit para cambiar el owner del contrato vulnerable:
    ```bash
    npx hardhat console --network localhost
    ```

2. En la consola de Hardhat:
    ```javascript
    const exploit = await ethers.getContractAt("Exploit", "DEPLOYED_EXPLOIT_CONTRACT_ADDRESS");
    await exploit.exploit("NEW_OWNER_ADDRESS");
    ```

3. Verifica el owner del contrato vulnerable:
    ```javascript
    const vulnerable = await ethers.getContractAt("Vulnerable", "DEPLOYED_VULNERABLE_CONTRACT_ADDRESS");
    console.log(await vulnerable.owner());
    ```

Cambia `DEPLOYED_EXPLOIT_CONTRACT_ADDRESS` y `DEPLOYED_VULNERABLE_CONTRACT_ADDRESS` con las direcciones una vez desplegadas.

