# Domain-Specific Lint Configuration Guide

## 📋 Overview

This repository provides **balanced** and **domain-specific** lint configurations for Flutter projects. Each configuration is tailored to the unique requirements of different industries while maintaining code quality and developer productivity.

## 🎯 Available Configurations

### Base Configuration (Balanced)
**File**: `analysis_options.yaml`

The default balanced configuration suitable for most Flutter projects. It focuses on:
- Bug prevention
- Code readability
- Performance optimization
- Modern Dart features
- Reasonable strictness without being overwhelming

**Use for**: General-purpose apps, MVPs, prototypes, small to medium projects

---

### 🏦 FinTech Configuration
**File**: `lints/analysis_options_fintech.yaml`

**Critical Focus**: Security, Compliance, Data Accuracy

**Key Differences from Base**:
- ✅ Explicit type annotations required (no inference for financial data)
- ✅ Strict null safety and type checking
- ✅ Immutability enforced (prefer_final_*)
- ✅ Public API documentation mandatory
- ✅ No `print` statements (security risk)
- ✅ No TODOs in production code
- ✅ Comprehensive error handling

**Best For**: Banking apps, payment systems, trading platforms, wallets, cryptocurrency apps

**Example Scenario**:
```dart
// ❌ Not allowed in FinTech
var amount = calculateTotal(); // Implicit type
print('Payment: $amount'); // Security risk

// ✅ Required in FinTech
final Decimal amount = calculateTotal(); // Explicit type
logger.info('Payment processed', amount: amount.toString()); // Secure logging
```

---

### 📚 EdTech Configuration
**File**: `lints/analysis_options_edtech.yaml`

**Critical Focus**: Accessibility, Performance, User Experience

**Key Differences from Base**:
- ✅ Accessibility rules enforced (widget keys, semantic labels)
- ✅ Performance optimization for low-end devices
- ✅ Offline-first patterns encouraged
- ✅ Clear error messages for students
- ✅ Moderate documentation requirements

**Best For**: Learning platforms, educational games, student portals, online courses, tutoring apps

**Example Scenario**:
```dart
// ✅ Accessibility-first approach
Semantics(
  label: 'Submit quiz answer',
  button: true,
  enabled: isAnswerSelected,
  child: ElevatedButton(
    key: const Key('submit_quiz_button'), // Required for testing & a11y
    onPressed: isAnswerSelected ? _submitAnswer : null,
    child: const Text('Submit'),
  ),
)
```

---

### 🏥 Healthcare Configuration
**File**: `lints/analysis_options_healthcare.yaml`

**Critical Focus**: HIPAA Compliance, Data Security, Reliability

**Key Differences from Base**:
- ✅ Strictest security settings (like FinTech)
- ✅ No dynamic types with patient data
- ✅ Comprehensive documentation for compliance
- ✅ Immutability for medical records
- ✅ Explicit error handling (no silent failures)
- ✅ No TODOs in production
- ✅ Audit-trail friendly code

**Best For**: Medical apps, health trackers, telemedicine, pharmacy apps, patient portals

**Example Scenario**:
```dart
/// Patient health record.
/// 
/// This class stores Protected Health Information (PHI) and must be
/// handled according to HIPAA regulations.
/// 
/// **Security**: All fields are final and immutable.
/// **Audit**: Changes are logged in [AuditService].
@immutable
class PatientRecord {
  const PatientRecord({
    required this.patientId,
    required this.healthData,
  });
  
  final String patientId;
  final HealthData healthData;
}
```

---

### 🛒 E-Commerce Configuration
**File**: `lints/analysis_options_ecommerce.yaml`

**Critical Focus**: Performance, UX, Conversion Optimization

**Key Differences from Base**:
- ✅ Aggressive performance optimization (const constructors)
- ✅ Image and media optimization
- ✅ Fast rendering for product lists
- ✅ Secure payment handling
- ✅ Clear state management for cart/checkout

**Best For**: Shopping apps, marketplaces, retail platforms, order management

**Example Scenario**:
```dart
// ✅ Performance-optimized product list
ListView.builder(
  itemCount: products.length,
  itemBuilder: (context, index) {
    final product = products[index];
    return const ProductCard( // Const for performance
      key: ValueKey(product.id),
      product: product,
    );
  },
)
```

---

### 📱 Social Media Configuration
**File**: `lints/analysis_options_social.yaml`

**Critical Focus**: Real-time Updates, Media Handling, Engagement

**Key Differences from Base**:
- ✅ Stream and subscription management
- ✅ Memory-efficient list rendering
- ✅ Async safety for real-time features
- ✅ Media optimization
- ✅ User content safety (no logging)

**Best For**: Social networks, messaging apps, content platforms, community apps

**Example Scenario**:
```dart
class FeedScreen extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final postsStream = ref.watch(postsStreamProvider);
    
    return postsStream.when(
      data: (posts) => ListView.builder(
        itemCount: posts.length,
        itemBuilder: (context, index) => const PostCard(
          key: ValueKey(posts[index].id), // Memory efficient
        ),
      ),
      loading: () => const LoadingIndicator(),
      error: (error, stack) => ErrorWidget(error), // Clear error handling
    );
  }
}
```

---

### 🏢 Enterprise/B2B Configuration
**File**: `lints/analysis_options_enterprise.yaml`

**Critical Focus**: Maintainability, Documentation, Team Collaboration

**Key Differences from Base**:
- ✅ Comprehensive documentation requirements
- ✅ Code organization for large teams
- ✅ Clear type annotations
- ✅ Standard patterns enforced
- ✅ Import organization

**Best For**: CRM, ERP, business tools, internal apps, productivity software

**Example Scenario**:
```dart
/// Service for managing customer relationships.
/// 
/// This service provides CRUD operations for customer data
/// and integrates with the CRM backend.
/// 
/// **Usage**:
/// ```dart
/// final service = CustomerService();
/// final customer = await service.getCustomer('123');
/// ```
/// 
/// **Dependencies**:
/// - [ApiClient] for network requests
/// - [DatabaseService] for local caching
class CustomerService {
  /// Creates a new customer service instance.
  /// 
  /// Requires [apiClient] for backend communication.
  CustomerService({
    required ApiClient apiClient,
  }) : _apiClient = apiClient;

  final ApiClient _apiClient;
  
  /// Fetches customer data by [customerId].
  /// 
  /// Returns [Customer] if found, throws [CustomerNotFoundException] otherwise.
  /// 
  /// **Example**:
  /// ```dart
  /// try {
  ///   final customer = await service.getCustomer('123');
  /// } on CustomerNotFoundException {
  ///   // Handle not found
  /// }
  /// ```
  Future<Customer> getCustomer(String customerId) async {
    // Implementation
  }
}
```

---

### 🎮 Gaming Configuration
**File**: `lints/analysis_options_gaming.yaml`

**Critical Focus**: Performance, Frame Rate, Rapid Iteration

**Key Differences from Base**:
- ✅ Maximum performance optimization
- ✅ Memory leak prevention
- ✅ Fast compilation
- ✅ Less strict on documentation (internal game code)
- ✅ Flexible for prototyping

**Best For**: Games, interactive entertainment, simulations, AR/VR apps

**Example Scenario**:
```dart
class GameLoop extends StatefulWidget {
  const GameLoop({super.key}); // Const for performance
  
  @override
  State<GameLoop> createState() => _GameLoopState();
}

class _GameLoopState extends State<GameLoop> 
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 16), // 60 FPS
    )..repeat();
  }
  
  @override
  void dispose() {
    _controller.dispose(); // Prevent memory leaks
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) => const GameCanvas(), // Const widget
    );
  }
}
```

---

## 🚀 How to Use

### Option 1: Use Base Configuration
```yaml
# analysis_options.yaml (project root)
include: package:flutter_lints/flutter.yaml

# Copy rules from our balanced base configuration
```

### Option 2: Use Domain-Specific Configuration

1. **Copy the appropriate configuration**:
```bash
# For FinTech project
cp lints/analysis_options_fintech.yaml analysis_options.yaml

# For EdTech project
cp lints/analysis_options_edtech.yaml analysis_options.yaml
```

2. **Customize if needed**:
```yaml
# analysis_options.yaml
include: lints/analysis_options_fintech.yaml

# Add project-specific rules or overrides
analyzer:
  exclude:
    - lib/legacy/**  # Exclude legacy code temporarily
```

### Option 3: Combine Multiple Domains

For hybrid apps (e.g., EdTech with payment features):

```yaml
# analysis_options.yaml
include: lints/analysis_options_edtech.yaml

# Add FinTech security rules for payment module
analyzer:
  errors:
    avoid_print: error  # From FinTech config

linter:
  rules:
    - always_specify_types  # For payment calculations
    - parameter_assignments  # Prevent mutation in payment flow
```

---

## 📊 Configuration Comparison

| Feature | Base | FinTech | EdTech | Healthcare | E-Commerce | Social | Enterprise | Gaming |
|---------|------|---------|--------|------------|------------|--------|------------|--------|
| **Type Safety** | Medium | **Strict** | Medium | **Strict** | Medium | Medium | High | Medium |
| **Documentation** | Low | **Required** | Medium | **Required** | Low | Low | High | Low |
| **Performance Focus** | Medium | Medium | **High** | Medium | **High** | **High** | Medium | **Extreme** |
| **Security** | Medium | **Strict** | Low | **Strict** | High | Medium | Medium | Low |
| **Immutability** | Medium | **Enforced** | Low | **Enforced** | Low | Low | Medium | Low |
| **Error Handling** | Medium | **Strict** | Medium | **Strict** | Medium | High | High | Medium |
| **Strictness Level** | 6/10 | **10/10** | 5/10 | **10/10** | 7/10 | 6/10 | 8/10 | 5/10 |

---

## 🎓 Gradual Adoption Strategy

### For Existing Projects

**Week 1-2: Analysis**
```bash
# Copy configuration without enforcing
cp lints/analysis_options_[domain].yaml analysis_options_new.yaml

# Run analysis to see issues
flutter analyze --options analysis_options_new.yaml > issues.txt
```

**Week 3-4: High Priority Fixes**
- Fix security-critical issues (avoid_print, type safety)
- Fix performance issues (const constructors)
- Fix bug-prone patterns (missing null checks)

**Week 5-6: Medium Priority**
- Add documentation to public APIs
- Organize imports
- Add trailing commas

**Week 7-8: Enable Configuration**
```bash
mv analysis_options_new.yaml analysis_options.yaml
```

**Ongoing: Maintain**
- Fix new issues as they arise
- Update lint rules with Flutter releases
- Review and adjust based on team feedback

---

## 🔧 IDE Setup

### VS Code

**.vscode/settings.json**:
```json
{
  "dart.lineLength": 100,
  "dart.enableLinting": true,
  "editor.formatOnSave": true,
  "editor.codeActionsOnSave": {
    "source.fixAll": true,
    "source.organizeImports": true
  }
}
```

### Android Studio / IntelliJ

1. **Settings** → **Editor** → **Code Style** → **Dart**
2. Enable "Enable Dart analysis"
3. Set "Run dart format on save"
4. Enable "Organize imports on save"

---

## 📝 Custom Rules

For rules not covered by standard linters, create custom lints:

```yaml
# analysis_options.yaml
analyzer:
  plugins:
    - custom_lint

custom_lint:
  rules:
    - no_hardcoded_api_keys  # Custom rule
    - require_semantic_labels_on_buttons  # EdTech specific
    - financial_decimal_type_only  # FinTech specific
```

---

## 🤝 Contributing

Have suggestions for domain-specific rules? 

1. Open an issue describing the use case
2. Provide code examples showing the problem
3. Suggest specific lint rules to add/remove

---

## ❓ FAQ

**Q: Can I mix multiple domain configurations?**
A: Yes! Start with the closest match and add specific rules from other domains.

**Q: These rules are too strict for my team. What should I do?**
A: Start with the base balanced configuration and gradually adopt domain-specific rules.

**Q: How often should I update my lint configuration?**
A: Review quarterly or when upgrading Flutter versions.

**Q: What if a rule doesn't make sense for my project?**
A: Disable it locally with explanation:
```yaml
linter:
  rules:
    # Disabled: Our legacy API requires dynamic types
    # TODO: Migrate to typed API by Q2 2026
    # - avoid_dynamic_calls
```

---

## 📚 Further Reading

- [Effective Dart](https://dart.dev/guides/language/effective-dart)
- [Flutter Linting Guide](https://docs.flutter.dev/testing/code-debugging/dart-code-metrics)
- [Dart Linter Rules](https://dart.dev/tools/linter-rules)
- [Custom Lint Package](https://pub.dev/packages/custom_lint)