# Смотрим изображения в архиве и пытаемся 
# нарисовать максимально похоже. Второй график
# можно приукрасить, сохранив элементы, которые
# уже есть. Используем только средства ggplot2,
# а также библиотеки, расширяющие его возможности.

# Установка и подключение библиотек
install.packages("hrbrthemes")
install.packages("ggtext")
library(tidyverse)
library(hrbrthemes)
library(ggtext)
library(ggrepel)

# Данные
data("mtcars")


# График 1. Данные mtcars
ggplot(mtcars, aes(x = wt, y = mpg)) +
  # Эллипс доверительного уровня 80%
  stat_ellipse(
    level = 0.8, 
    geom = "polygon", 
    fill = "blue", 
    alpha = 0.2
  ) +
  # Точки
  geom_point(size = 2, color = "orange") +
  # Подписи без наложения
  geom_text_repel(
    label = rownames(mtcars), 
    size = 4.5, 
    max.overlaps = 11
  ) +
  # Классическая тема с кастомизацией осей
  theme_classic() +
  theme(
    axis.title = element_text(size = 11, face = "bold"), # Жирные подписи осей
    axis.text = element_text(size = 11, face = "bold"),  # Жирные значения осей
    axis.line = element_line(size = 0.8, color = "black") # Толстые линии осей
  )

# График 2

ggplot() +
  # Добавление текста
  annotate(
    "richtext",
    x = 0.5,
    y = 0.52, # Текст чуть выше линии
    label = "<span style='color: black; font-family: sans; margin: 0; padding: 0;'>I <span style='color: #FF69B4;'>♥</span> my mom & ggplot2</span>", 
    size = 8,
    hjust = 0.5, # Центрируем текст
    family = "sans",
    fill = NA,
    label.color = NA,
  ) +
  # Добавление линии под текстом
  geom_segment(
    aes(x = 0.25, xend = 0.75, y = 0.45, yend = 0.45), # Координаты линии
    color = "blue",
    size = 1.5
  ) +
  # Убираем оси и фон
  theme_void() +
  theme(
    plot.margin = margin(20, 180, 20, 180) # Отступы вокруг графика
  )
