# neovim configuration files

# 🧠 Neovim Config for Backend Development

🎯 Мой персонализированный конфиг для [Neovim](https://neovim.io/), ориентированный на продуктивную работу бэкенд-разработчика.  
Поддерживает Python, JavaScript, HTML/CSS, Rust и Go с автоформаттерами, линтерами, LSP и приятным интерфейсом.

---

## 🚀 Возможности

### 📦 Плагины (установлены через `lazy.nvim`)

- **🌲 NvimTree** — файловый менеджер
- **🔍 Telescope** — fuzzy поиск файлов, текста, буферов
- **🧠 LSP + Mason** — автодополнение и подсказки для:
  - Python (`pyright`, `ruff`)
  - JavaScript/TypeScript (`tsserver`)
  - HTML/CSS (`html`, `cssls`)
  - Rust (`rust_analyzer`)
  - Go (`gopls`)
- **🧼 Formatters/Linters** — via `null-ls`:
  - `black`, `ruff`, `prettier`, `stylua`, `gofmt`, `rustfmt`
- **📜 Bufferline** — вкладки по буферам
- **🌈 Gitsigns** — интеграция с Git
- **🧠 Lspsaga** — улучшенный UI для LSP
- **🧩 Which-Key** — подсказки по шорткатам
- **🖥 ToggleTerm** — встроенный терминал

---

## 🎯 Основные шорткаты (Leader: `<space>`)

| Категория     | Шорткат         | Действие                           |
|---------------|------------------|------------------------------------|
| 🔍 Поиск      | `<leader>ff`     | Поиск файла                        |
|               | `<leader>fg`     | Поиск по содержимому               |
|               | `<leader>fb`     | Открытые буферы                    |
|               | `<leader>fh`     | Help-документация                  |
| 🧱 Файлы      | `<leader>t`      | Toggle NvimTree                    |
|               | `<leader>tf`     | Фокус на NvimTree                  |
| 🧠 Git        | `<leader>gs`     | Вкл/выкл git-знаки                 |
|               | `<leader>gp`     | Просмотр изменений (hunk)         |
|               | `<leader>gr`     | Откат изменений                    |
|               | `<leader>gb`     | Blame текущей строки               |
| 🖥 Терминал   | `<leader>tt`     | Встроенный терминал                |
| 📚 Прочее     | `jk`             | Быстрый выход из insert режима     |
|               | `<C-s>`          | Сохранить файл                     |
|               | `<C-q>`          | Выйти из файла                     |
|               | `<Tab>/<S-Tab>` | Переключение между вкладками       |

---

## 🔧 Установка

```bash
# Клонируем в нужное место
git clone https://github.com/Vov4ik141480/nvim ~/.config/nvim

# Открываем nvim — Lazy установит плагины
nvim


