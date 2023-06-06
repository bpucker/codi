#Packages installation
#if (!require("BiocManager", quietly = TRUE))
# install.packages("BiocManager")

#BiocManager::install("ComplexHeatmap")

# Load libraries
library(ComplexHeatmap)
library(dplyr)
library(circlize)

# Read data
data <- read.csv("/path/to/candidates-genes-table.csv", header = TRUE)
countdata <- read.delim("/path/to/tpm.txt", header = TRUE, sep = "\t", stringsAsFactors = FALSE)

# Filter candidate genes
candidategenes <- data$Trinity.ID
heatmapdata <- countdata %>%
  filter(gene %in% candidategenes)

#save filtered dataframe that will be used for heatmap construction
#this step is optional although is useful for changing labels

write.csv(heatmapdata,"/path/to/directory/heatmapdata.csv", row.names=FALSE)
heatmapdata1 <- read.csv("/path/to/directory/heatmapdata.csv", header= T, sep=",", row.names = 1)

# Generate z-scores
transposedata <- t(heatmapdata1) # Transpose and convert to data frame
z_scores <- scale(transposedata, center = TRUE, scale = TRUE)
finaldata <- t(z_scores)

# Define color palette
col_fun <- colorRamp2(c(-2, 0, 2), c("blue", "white", "red"))

# Create the heatmap
transposedata = transposedata[1:9, 1:10]
heatmap1 <- Heatmap(finaldata,
                    width = ncol(finaldata)*unit(15, "mm"),
                    height = nrow(finaldata)*unit(10, "mm"),
                    col = col_fun,
                    cluster_rows = FALSE,
                    cluster_columns = FALSE,
                    show_row_names = TRUE,
                    show_column_names = TRUE,
                    row_names_gp = grid::gpar(fontsize = 9), name = "Gene expression", column_order = (colnames(finaldata)), 
                    cell_fun = function(j, i, x, y, width, height, fill) {
                      grid.text(sprintf("%.1f", transposedata[j, i]), x, y, gp = gpar(fontsize = 10))
                    })

# Save the heatmap as PNG file
png(file = "/path/to/directory/heatmapdata.csv/complete-Gene_expression.png", width = 700, height = 1800, pointsize = 16)
draw(heatmap1)
dev.off()
