// Sistema de Filtros Funcionais
class FilterSystem {
    constructor() {
        this.currentCategory = 'Todos';
        this.currentPriceRange = { min: 0, max: 10000 };
        this.filteredProducts = getAllProducts();
    }

    // Filtrar por categoria
    filterByCategory(category) {
        this.currentCategory = category;
        this.applyFilters();
    }

    // Filtrar por preço
    filterByPrice(minPrice, maxPrice) {
        this.currentPriceRange = { min: minPrice, max: maxPrice };
        this.applyFilters();
    }

    // Aplicar todos os filtros
    applyFilters() {
        let results = getAllProducts();

        // Filtrar por categoria
        if (this.currentCategory !== 'Todos') {
            results = results.filter(product => product.category === this.currentCategory);
        }

        // Filtrar por preço
        results = results.filter(product =>
            product.price >= this.currentPriceRange.min &&
            product.price <= this.currentPriceRange.max
        );

        this.filteredProducts = results;
        this.updateUI();
        return results;
    }

    // Resetar filtros
    resetFilters() {
        this.currentCategory = 'Todos';
        this.currentPriceRange = { min: 0, max: 10000 };
        this.filteredProducts = getAllProducts();
        this.updateUI();
    }

    // Atualizar interface
    updateUI() {
        const productsGrid = document.querySelector('.products-grid');
        if (!productsGrid) return;

        productsGrid.innerHTML = '';

        if (this.filteredProducts.length === 0) {
            productsGrid.innerHTML = '<p style="grid-column: 1/-1; text-align: center; padding: 40px; color: #999;">Nenhum produto encontrado</p>';
            return;
        }

        this.filteredProducts.forEach(product => {
            productsGrid.appendChild(this.createProductCard(product));
        });
    }

    // Criar card do produto
    createProductCard(product) {
        const card = document.createElement('div');
        card.className = 'product-card';
        card.innerHTML = `
            <div class="product-image">${product.image}</div>
            <div class="product-info">
                <div class="product-category">${product.category}</div>
                <div class="product-name">${product.name}</div>
                <div class="product-description">${product.description}</div>
                <div class="product-footer">
                    <div class="product-price">${formatCurrency(product.price)}</div>
                    <button class="add-to-cart-btn" data-product-id="${product.id}">Adicionar</button>
                </div>
            </div>
        `;

        // Evento para ir para detalhes do produto
        card.querySelector('.product-name').addEventListener('click', () => {
            goToProductDetail(product.id);
        });

        // Evento para adicionar ao carrinho
        card.querySelector('.add-to-cart-btn').addEventListener('click', (e) => {
            e.stopPropagation();
            addToCart(product);
        });

        return card;
    }

    // Obter filtrados
    getFilteredProducts() {
        return this.filteredProducts;
    }
}

// Instância global do filtro
const filterSystem = new FilterSystem();

// Inicializar filtros
function initializeFilters() {
    const filterButtons = document.querySelectorAll('.filter-btn');
    
    filterButtons.forEach(button => {
        button.addEventListener('click', () => {
            // Remove classe active de todos
            filterButtons.forEach(btn => btn.classList.remove('active'));
            // Adiciona classe active ao clicado
            button.classList.add('active');
            
            const category = button.textContent.trim();
            filterSystem.filterByCategory(category);
        });
    });

    // Renderizar produtos iniciais
    filterSystem.updateUI();
}

// Função para adicionar ao carrinho
function addToCart(product) {
    const quantity = 1;
    cart.addItem(product, quantity);
    updateCartIcon();
    notifyUser(`${product.name} adicionado ao carrinho!`, 'success');
}

// Função para ir para detalhes do produto
function goToProductDetail(productId) {
    window.location.href = `product-detail.html?id=${productId}`;
}

// Inicializar quando o DOM está pronto
document.addEventListener('DOMContentLoaded', () => {
    initializeFilters();
    updateCartIcon();
});
