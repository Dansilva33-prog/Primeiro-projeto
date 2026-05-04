// Base de dados de produtos
const products = [
    {
        id: 1,
        name: 'Smartphone XYZ',
        category: 'Eletrônicos',
        price: 1999.00,
        image: '📱',
        description: 'Tela 6.5", 128GB, 5G',
        details: 'Smartphone de última geração com processador topo de linha, câmera de 48MP, bateria de 5000mAh e carregamento rápido de 65W.',
        stock: 15
    },
    {
        id: 2,
        name: 'Notebook Pro',
        category: 'Eletrônicos',
        price: 3499.00,
        image: '💻',
        description: 'Intel i7, 16GB RAM, SSD 512GB',
        details: 'Notebook profissional com processador Intel i7 de 12ª geração, 16GB de RAM DDR5, SSD NVMe de 512GB, tela Full HD 15.6" e GPU dedicada.',
        stock: 8
    },
    {
        id: 3,
        name: 'Camiseta Premium',
        category: 'Roupas',
        price: 89.90,
        image: '👕',
        description: '100% algodão, várias cores',
        details: 'Camiseta de alta qualidade feita com 100% algodão puro, tecido macio e respirável. Disponível em 8 cores diferentes.',
        stock: 50
    },
    {
        id: 4,
        name: 'Calça Jeans',
        category: 'Roupas',
        price: 129.90,
        image: '👖',
        description: 'Confortável e durável',
        details: 'Calça jeans clássica com ajuste confortável, resistente e durável. Perfeita para o dia a dia com estilo atemporal.',
        stock: 35
    },
    {
        id: 5,
        name: 'Livro de Ficção',
        category: 'Livros',
        price: 49.90,
        image: '📚',
        description: 'Best-seller internacional',
        details: 'Livro de ficção que conquistou o mundo todo, traduzido para 25 idiomas com mais de 5 milhões de cópias vendidas.',
        stock: 42
    },
    {
        id: 6,
        name: 'Sofá Confortável',
        category: 'Casa',
        price: 1299.00,
        image: '🛋️',
        description: 'Design moderno e elegante',
        details: 'Sofá de 3 lugares com design contemporâneo, estofado em tecido premium, estrutura em madeira reflorestada.',
        stock: 5
    },
    {
        id: 7,
        name: 'Planta Decorativa',
        category: 'Casa',
        price: 79.90,
        image: '🪴',
        description: 'Natural e fresca',
        details: 'Planta decorativa viva, acompanha vaso de cerâmica e manual de cuidados. Melhora a qualidade do ar do ambiente.',
        stock: 20
    },
    {
        id: 8,
        name: 'Fones Bluetooth',
        category: 'Eletrônicos',
        price: 349.90,
        image: '🎧',
        description: 'Som premium, 30h bateria',
        details: 'Fones de ouvido sem fio com qualidade de áudio premium, bateria de até 30 horas, cancelamento de ruído ativo.',
        stock: 25
    },
    {
        id: 9,
        name: 'Monitor 4K',
        category: 'Eletrônicos',
        price: 1899.00,
        image: '🖥️',
        description: 'Resolução 4K, 144Hz, HDR',
        details: 'Monitor profissional 32" com resolução 4K, taxa de atualização de 144Hz, tecnologia HDR10+ para cores vibrantes.',
        stock: 12
    },
    {
        id: 10,
        name: 'Mochila Escolar',
        category: 'Roupas',
        price: 199.90,
        image: '🎒',
        description: 'Ergonômica com 30L',
        details: 'Mochila ergonômica com capacidade de 30 litros, múltiplos compartimentos, alças ajustáveis e tecido resistente à água.',
        stock: 30
    },
    {
        id: 11,
        name: 'Luminária LED',
        category: 'Casa',
        price: 159.90,
        image: '💡',
        description: 'RGB inteligente, 16 cores',
        details: 'Luminária LED inteligente com 16 cores RGB, controle via smartphone, 3 modos de funcionamento.',
        stock: 18
    },
    {
        id: 12,
        name: 'Livro de Ficção Científica',
        category: 'Livros',
        price: 59.90,
        image: '📖',
        description: 'Aventura espacial épica',
        details: 'Romance de ficção científica que explora mundos distantes e tecnologia futurista em uma narrativa envolvente.',
        stock: 38
    }
];

// Função para obter todos os produtos
function getAllProducts() {
    return products;
}

// Função para obter produto por ID
function getProductById(id) {
    return products.find(product => product.id === id);
}

// Função para obter produtos por categoria
function getProductsByCategory(category) {
    if (category === 'Todos') {
        return products;
    }
    return products.filter(product => product.category === category);
}

// Função para obter categorias únicas
function getCategories() {
    const categories = ['Todos', ...new Set(products.map(p => p.category))];
    return categories;
}

// Função para buscar produtos
function searchProducts(query) {
    const lowercaseQuery = query.toLowerCase();
    return products.filter(product =>
        product.name.toLowerCase().includes(lowercaseQuery) ||
        product.description.toLowerCase().includes(lowercaseQuery) ||
        product.details.toLowerCase().includes(lowercaseQuery) ||
        product.category.toLowerCase().includes(lowercaseQuery)
    );
}

// Função para filtrar por preço
function filterByPrice(minPrice, maxPrice) {
    return products.filter(product =>
        product.price >= minPrice && product.price <= maxPrice
    );
}
