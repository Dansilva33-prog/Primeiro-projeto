// Sistema de Carrinho de Compras
class ShoppingCart {
    constructor() {
        this.items = this.loadFromLocalStorage();
    }

    // Carregar carrinho do localStorage
    loadFromLocalStorage() {
        const saved = localStorage.getItem('cart');
        return saved ? JSON.parse(saved) : [];
    }

    // Salvar carrinho no localStorage
    saveToLocalStorage() {
        localStorage.setItem('cart', JSON.stringify(this.items));
    }

    // Adicionar produto ao carrinho
    addItem(product, quantity = 1) {
        const existingItem = this.items.find(item => item.id === product.id);
        
        if (existingItem) {
            existingItem.quantity += quantity;
        } else {
            this.items.push({
                id: product.id,
                name: product.name,
                price: product.price,
                image: product.image,
                category: product.category,
                quantity: quantity
            });
        }
        
        this.saveToLocalStorage();
        return true;
    }

    // Remover produto do carrinho
    removeItem(productId) {
        this.items = this.items.filter(item => item.id !== productId);
        this.saveToLocalStorage();
        return true;
    }

    // Atualizar quantidade
    updateQuantity(productId, quantity) {
        const item = this.items.find(item => item.id === productId);
        if (item) {
            if (quantity <= 0) {
                this.removeItem(productId);
            } else {
                item.quantity = quantity;
                this.saveToLocalStorage();
            }
            return true;
        }
        return false;
    }

    // Obter quantidade de itens
    getItemCount() {
        return this.items.reduce((total, item) => total + item.quantity, 0);
    }

    // Obter total do carrinho
    getTotal() {
        return this.items.reduce((total, item) => total + (item.price * item.quantity), 0);
    }

    // Obter todos os itens
    getItems() {
        return this.items;
    }

    // Limpar carrinho
    clear() {
        this.items = [];
        this.saveToLocalStorage();
        return true;
    }

    // Verificar se produto está no carrinho
    hasItem(productId) {
        return this.items.some(item => item.id === productId);
    }

    // Obter item específico
    getItem(productId) {
        return this.items.find(item => item.id === productId);
    }

    // Calcular subtotal, impostos e total com frete
    getCheckoutDetails() {
        const subtotal = this.getTotal();
        const taxa = subtotal * 0.1; // 10% de taxa
        const frete = this.items.length > 0 ? 15.00 : 0; // Frete fixo
        const total = subtotal + taxa + frete;

        return {
            subtotal: subtotal,
            taxa: taxa,
            frete: frete,
            total: total
        };
    }
}

// Instância global do carrinho
const cart = new ShoppingCart();

// Funções auxiliares
function formatCurrency(value) {
    return new Intl.NumberFormat('pt-BR', {
        style: 'currency',
        currency: 'BRL'
    }).format(value);
}

function updateCartIcon() {
    const cartIcon = document.querySelector('.cart-icon');
    if (cartIcon) {
        const count = cart.getItemCount();
        cartIcon.textContent = `🛒 Carrinho (${count})`;
    }
}

function notifyUser(message, type = 'success') {
    // Criar notificação simples
    const notification = document.createElement('div');
    notification.className = `notification notification-${type}`;
    notification.textContent = message;
    notification.style.cssText = `
        position: fixed;
        top: 20px;
        right: 20px;
        padding: 15px 20px;
        background-color: ${type === 'success' ? '#4CAF50' : '#f44336'};
        color: white;
        border-radius: 4px;
        box-shadow: 0 2px 8px rgba(0,0,0,0.2);
        z-index: 10000;
        animation: slideIn 0.3s ease-in-out;
    `;
    
    document.body.appendChild(notification);
    
    setTimeout(() => {
        notification.style.animation = 'slideOut 0.3s ease-in-out';
        setTimeout(() => notification.remove(), 300);
    }, 3000);
}

// Adicionar estilos para animações
const style = document.createElement('style');
style.textContent = `
    @keyframes slideIn {
        from {
            transform: translateX(400px);
            opacity: 0;
        }
        to {
            transform: translateX(0);
            opacity: 1;
        }
    }

    @keyframes slideOut {
        from {
            transform: translateX(0);
            opacity: 1;
        }
        to {
            transform: translateX(400px);
            opacity: 0;
        }
    }
`;
document.head.appendChild(style);
