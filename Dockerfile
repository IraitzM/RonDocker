# Lets start from the R version we want
FROM rstudio/plumber

# Copy application files
COPY src /app/src

# Expose app port
EXPOSE 8000

# Finally, run your app
ENTRYPOINT ["R", "-e", "pr <- plumber::plumb('/app/src/fizzbuzz.R'); pr$run(host='0.0.0.0', port=8000)"]