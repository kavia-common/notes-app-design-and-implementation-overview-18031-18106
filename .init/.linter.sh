#!/bin/bash
cd /home/kavia/workspace/code-generation/notes-app-design-and-implementation-overview-18031-18106/notes_app_presentation_frontend
npm run lint
ESLINT_EXIT_CODE=$?
if [ $ESLINT_EXIT_CODE -ne 0 ]; then
  exit 1
fi

