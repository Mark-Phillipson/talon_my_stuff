# Adding ASP.NET Razor Support to Cursorless

This document outlines the steps needed to add support for ASP.NET Razor files in Cursorless. Razor files (*.razor, *.cshtml) mix HTML, CSS, and C# content, making them an interesting case for voice coding support.

## Overview

ASP.NET Razor support requires several components to work together:
- A Tree-sitter parser for Razor syntax
- VSCode language integration
- Cursorless language registration
- Scope definitions for mixed content

## Step 1: Create Tree-sitter Parser

The first and most crucial step is creating a tree-sitter grammar for ASP.NET Razor:

1. Create a new repository `tree-sitter-aspnetcorerazor`
2. Define grammar to handle:
   - HTML content
   - C# code blocks (@{ ... })
   - Razor directives (@model, @using, etc.)
   - Inline expressions (@DateTime.Now)
   - Components (<Component>...</Component>)
   - Mixed content regions

The grammar should use tree-sitter's external scanner functionality to handle the context-switching between HTML and C#, similar to how the ERB/EJS parser works.

### Key Grammar Elements

```js
module.exports = grammar({
  name: 'aspnetcorerazor',
  
  externals: $ => [
    $.razor_transition,
    $.code_block_start,
    $.code_block_end
  ],
  
  rules: {
    document: $ => repeat(choice(
      $.content,
      $.directive,
      $.code_block,
      $.expression
    )),
    
    directive: $ => seq('@', choice(
      'model',
      'using',
      'code',
      'functions',
      'page',
      'inject'
    )),
    
    // Other rules to be defined...
  }
});
```

## Step 2: VSCode Integration

VSCode already supports Razor files with the language identifier `aspnetcorerazor`, so this step is already complete. The language features are provided by the C# extension.

## Step 3: Register with Cursorless

1. Create scope support map file for Razor:
   ```typescript
   // razor.ts
   import { LanguageScopeSupportFacetMap, ScopeSupportFacetLevel } from "./scopeSupportFacets.types";
   
   const { supported, unsupported, notApplicable } = ScopeSupportFacetLevel;
   
   export const razorScopeSupport: LanguageScopeSupportFacetMap = {
     // Scope definitions to be added
   };
   ```

2. Add entry to global scope support table
3. Create `razor.scm` in queries folder for parse tree patterns

## Step 4: Define Language Scopes

Define specific scopes for different Razor elements:

1. Razor-specific scopes:
   - Directives (@model, @using, etc.)
   - Code blocks
   - Inline expressions
   - Components

2. HTML scopes:
   - Elements
   - Attributes
   - Content

3. C# scopes:
   - Class definitions
   - Methods
   - Properties
   - Variables

## Next Steps

1. Create proof-of-concept tree-sitter grammar
2. Submit PR to vscode-parse-tree
3. Implement basic Cursorless support
4. Add test cases and documentation
5. Refine and expand scope support

## Benefits

Adding Razor support will help developers who:
- Build ASP.NET Core web applications
- Work with Blazor components
- Need to switch between HTML and C# contexts frequently
- Want to use voice commands for mixed-language files

## Resources

- [Cursorless Documentation](https://www.cursorless.org/docs/)
- [Tree-sitter Documentation](https://tree-sitter.github.io/)
- [VSCode Razor Support](https://code.visualstudio.com/docs/languages/identifiers#_known-language-identifiers)
- [ASP.NET Core Razor Documentation](https://learn.microsoft.com/en-us/aspnet/core/mvc/views/razor)
