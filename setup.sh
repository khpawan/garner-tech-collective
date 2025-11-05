#!/bin/bash

# Setup script for Garner Tech Collective GitHub repository
# Run this after downloading the folder

echo "🚀 Setting up Garner Tech Collective repository..."

# Initialize git repository
git init

# Add all files
git add .

# Create initial commit
git commit -m "Initial commit: Garner Tech Collective manifesto and structure"

echo "✅ Local repository created!"
echo ""
echo "Next steps:"
echo "1. Create a new repository on GitHub named 'garner-tech-collective'"
echo "   Go to: https://github.com/new"
echo "   - Make it PUBLIC"
echo "   - Don't initialize with README (we already have one)"
echo ""
echo "2. Connect your local repo to GitHub:"
echo "   git remote add origin https://github.com/YOUR_USERNAME/garner-tech-collective.git"
echo ""
echo "3. Push to GitHub:"
echo "   git branch -M main"
echo "   git push -u origin main"
echo ""
echo "4. Enable GitHub Pages (for website):"
echo "   - Go to Settings → Pages"
echo "   - Source: Deploy from a branch"
echo "   - Branch: main, folder: / (root)"
echo "   - Save"
echo ""
echo "🎉 Then share the link and start building your community!"
