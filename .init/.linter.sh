#!/bin/bash
cd /home/kavia/workspace/code-generation/kavia-features-overview-presentation-3fe6eb40/features_slide_deck_frontend
npx run lint
ESLINT_EXIT_CODE=$?
npm run build
BUILD_EXIT_CODE=$?
if [ $ESLINT_EXIT_CODE -ne 0 ] || [ $BUILD_EXIT_CODE -ne 0 ]; then
  exit 1
fi

