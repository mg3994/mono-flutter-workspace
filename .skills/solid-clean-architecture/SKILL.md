---
name: solid-clean-architecture
description: Clean Architecture principles, feature-driven layer isolation, SOLID design, and LEGO brick swappability.
---

# Skill: SOLID & Clean Architecture

Use this skill whenever creating or refactoring a Flutter package, service, or feature.

## 1. Feature-Driven Clean Architecture Layers

1. **Domain Layer (`packages/domain` or `<feature>/domain`)**:
   - Holds pure business entities, value objects, domain failures (`Failure`), and repository interfaces starting with `I` (e.g. `ICatalogRepository`).
   - Must remain pure Dart (zero vendor SDK or UI dependencies).

2. **Data / Infrastructure Layer (`packages/infrastructure` or `<feature>/data`)**:
   - Implements domain repository interfaces using concrete IO technologies (Drift, Dio, Firebase, Geolocator).
   - Maps low-level DTOs/rows into domain entities before returning data to domain callers.

3. **Presentation / Feature Layer (`packages/features/<name>`)**:
   - Manages UI state using Signals (`bloc_signals_flutter`) or Bloc.
   - Depends only on `domain` and `core_ui` (never on `infrastructure` directly).

4. **Composition Root (`apps/blogstore`)**:
   - Binds concrete infrastructure implementations to domain contracts using constructor dependency injection.
   - Sets up application routing (`kaisel`) and bootstrap lifecycle.

## 2. SOLID Rules

- **Single Responsibility**: Separate data sources, domain logic, state management, and UI into distinct modules.
- **Dependency Inversion**: Feature controllers depend on domain abstractions rather than concrete API/database implementations.
- **LEGO Swappability**: Adapters can be replaced without editing feature widgets or domain entities.
