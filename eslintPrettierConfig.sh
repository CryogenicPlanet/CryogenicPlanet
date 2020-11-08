touch .eslintrc
echo '{
  "env": {
    "browser": true,
    "es6": true,
    "node": true
  },
  "extends": [
    "react-app",
    "plugin:react/recommended",
    "plugin:react-hooks/recommended",
    "prettier-standard"
  ],
  "parserOptions": {
    "project": "./tsconfig.json"
  },
  "plugins": ["react", "@typescript-eslint", "react-hooks", "prettier"],
  "rules": {
    "no-use-before-define": "off",
    "prettier/prettier": ["error", {
    "endOfLine":"auto",
    "semi" : true
  }]
  }
}
' > .eslintrc
echo '"prettier-config-standard"' > .prettierrc

yarn add -D @typescript-eslint/eslint-plugin @typescript-eslint/parser babel-eslint eslint eslint-config-prettier eslint-config-prettier-standard eslint-config-react-app eslint-config-standard
yarn add -D eslint-plugin-flowtype eslint-plugin-import eslint-plugin-jsx-a11y eslint-plugin-node eslint-plugin-prettier eslint-plugin-promise eslint-plugin-react eslint-plugin-react-hooks eslint-plugin-standard prettier prettier-config-standard

eslint . --ext .ts,.tsx 