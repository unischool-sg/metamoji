.class public final Lkotlin/reflect/jvm/internal/impl/km/KmProperty;
.super Ljava/lang/Object;
.source "Nodes.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNodes.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Nodes.kt\nkotlin/metadata/KmProperty\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,869:1\n1#2:870\n1586#3:871\n1661#3,3:872\n*S KotlinDebug\n*F\n+ 1 Nodes.kt\nkotlin/metadata/KmProperty\n*L\n429#1:871\n429#1:872,3\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlin/reflect/KProperty<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final _hasGetter$delegate:Lkotlin/reflect/jvm/internal/impl/km/internal/BooleanFlagDelegate;

.field private final _hasSetter$delegate:Lkotlin/reflect/jvm/internal/impl/km/internal/BooleanFlagDelegate;

.field private final annotations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/km/KmAnnotation;",
            ">;"
        }
    .end annotation
.end field

.field private final backingFieldAnnotations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/km/KmAnnotation;",
            ">;"
        }
    .end annotation
.end field

.field private final contextParameters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/km/KmValueParameter;",
            ">;"
        }
    .end annotation
.end field

.field private final contextReceiverTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/km/KmType;",
            ">;"
        }
    .end annotation
.end field

.field private final delegateFieldAnnotations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/km/KmAnnotation;",
            ">;"
        }
    .end annotation
.end field

.field private final extensionReceiverParameterAnnotations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/km/KmAnnotation;",
            ">;"
        }
    .end annotation
.end field

.field private final extensions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/KmPropertyExtension;",
            ">;"
        }
    .end annotation
.end field

.field private flags:I

.field private final getter:Lkotlin/reflect/jvm/internal/impl/km/KmPropertyAccessorAttributes;

.field private name:Ljava/lang/String;

.field private receiverParameterType:Lkotlin/reflect/jvm/internal/impl/km/KmType;

.field public returnType:Lkotlin/reflect/jvm/internal/impl/km/KmType;

.field private setter:Lkotlin/reflect/jvm/internal/impl/km/KmPropertyAccessorAttributes;

.field private setterParameter:Lkotlin/reflect/jvm/internal/impl/km/KmValueParameter;

.field private final typeParameters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/km/KmTypeParameter;",
            ">;"
        }
    .end annotation
.end field

.field private final versionRequirements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/km/KmVersionRequirement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "_hasSetter"

    const-string v3, "get_hasSetter()Z"

    const-class v4, Lkotlin/reflect/jvm/internal/impl/km/KmProperty;

    const/4 v5, 0x0

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    aput-object v1, v0, v5

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "_hasGetter"

    const-string v3, "get_hasGetter()Z"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/km/KmProperty;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;II)V
    .locals 1

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 316
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/km/KmProperty;->flags:I

    .line 317
    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/km/KmProperty;->name:Ljava/lang/String;

    .line 324
    new-instance p1, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;

    sget-object p2, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->HAS_SETTER:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;

    const-string v0, "HAS_SETTER"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;)V

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagDelegatesImplKt;->propertyBooleanFlag(Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;)Lkotlin/reflect/jvm/internal/impl/km/internal/BooleanFlagDelegate;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/km/KmProperty;->_hasSetter$delegate:Lkotlin/reflect/jvm/internal/impl/km/internal/BooleanFlagDelegate;

    .line 325
    new-instance p1, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;

    sget-object p2, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->HAS_GETTER:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;

    const-string v0, "HAS_GETTER"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;)V

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagDelegatesImplKt;->propertyBooleanFlag(Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;)Lkotlin/reflect/jvm/internal/impl/km/internal/BooleanFlagDelegate;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/km/KmProperty;->_hasGetter$delegate:Lkotlin/reflect/jvm/internal/impl/km/internal/BooleanFlagDelegate;

    .line 333
    new-instance p1, Lkotlin/reflect/jvm/internal/impl/km/KmPropertyAccessorAttributes;

    invoke-direct {p1, p3}, Lkotlin/reflect/jvm/internal/impl/km/KmPropertyAccessorAttributes;-><init>(I)V

    const/4 p2, 0x1

    invoke-direct {p0, p2}, Lkotlin/reflect/jvm/internal/impl/km/KmProperty;->set_hasGetter(Z)V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/km/KmProperty;->getter:Lkotlin/reflect/jvm/internal/impl/km/KmPropertyAccessorAttributes;

    .line 343
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/km/KmProperty;->get_hasSetter()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lkotlin/reflect/jvm/internal/impl/km/KmPropertyAccessorAttributes;

    invoke-direct {p1, p4}, Lkotlin/reflect/jvm/internal/impl/km/KmPropertyAccessorAttributes;-><init>(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/km/KmProperty;->setter:Lkotlin/reflect/jvm/internal/impl/km/KmPropertyAccessorAttributes;

    .line 352
    new-instance p1, Ljava/util/ArrayList;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/km/KmProperty;->typeParameters:Ljava/util/List;

    .line 363
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/km/KmProperty;->extensionReceiverParameterAnnotations:Ljava/util/List;

    .line 376
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/km/KmProperty;->contextReceiverTypes:Ljava/util/List;

    .line 385
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/km/KmProperty;->contextParameters:Ljava/util/List;

    .line 408
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/km/KmProperty;->versionRequirements:Ljava/util/List;

    .line 414
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/km/KmProperty;->annotations:Ljava/util/List;

    .line 420
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/km/KmProperty;->backingFieldAnnotations:Ljava/util/List;

    .line 426
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/km/KmProperty;->delegateFieldAnnotations:Ljava/util/List;

    .line 429
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/MetadataExtensions;->Companion:Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/MetadataExtensions$Companion;

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/MetadataExtensions$Companion;->getINSTANCES$kotlin_metadata()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 871
    new-instance p2, Ljava/util/ArrayList;

    const/16 p3, 0xa

    invoke-static {p1, p3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result p3

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast p2, Ljava/util/Collection;

    .line 872
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    .line 873
    check-cast p3, Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/MetadataExtensions;

    .line 429
    invoke-interface {p3}, Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/MetadataExtensions;->createPropertyExtension()Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/KmPropertyExtension;

    move-result-object p3

    .line 873
    invoke-interface {p2, p3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 874
    :cond_1
    check-cast p2, Ljava/util/List;

    .line 429
    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/km/KmProperty;->extensions:Ljava/util/List;

    return-void
.end method

.method private final get_hasSetter()Z
    .locals 3

    .line 324
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/km/KmProperty;->_hasSetter$delegate:Lkotlin/reflect/jvm/internal/impl/km/internal/BooleanFlagDelegate;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/km/KmProperty;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lkotlin/reflect/jvm/internal/impl/km/internal/BooleanFlagDelegate;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Z

    move-result v0

    return v0
.end method

.method private final set_hasGetter(Z)V
    .locals 3

    .line 325
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/km/KmProperty;->_hasGetter$delegate:Lkotlin/reflect/jvm/internal/impl/km/internal/BooleanFlagDelegate;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/km/KmProperty;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1, p1}, Lkotlin/reflect/jvm/internal/impl/km/internal/BooleanFlagDelegate;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Z)V

    return-void
.end method


# virtual methods
.method public final getAnnotations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/km/KmAnnotation;",
            ">;"
        }
    .end annotation

    .line 414
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/km/KmProperty;->annotations:Ljava/util/List;

    return-object v0
.end method

.method public final getBackingFieldAnnotations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/km/KmAnnotation;",
            ">;"
        }
    .end annotation

    .line 420
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/km/KmProperty;->backingFieldAnnotations:Ljava/util/List;

    return-object v0
.end method

.method public final getContextParameters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/km/KmValueParameter;",
            ">;"
        }
    .end annotation

    .line 385
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/km/KmProperty;->contextParameters:Ljava/util/List;

    return-object v0
.end method

.method public final getDelegateFieldAnnotations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/km/KmAnnotation;",
            ">;"
        }
    .end annotation

    .line 426
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/km/KmProperty;->delegateFieldAnnotations:Ljava/util/List;

    return-object v0
.end method

.method public final getExtensionReceiverParameterAnnotations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/km/KmAnnotation;",
            ">;"
        }
    .end annotation

    .line 363
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/km/KmProperty;->extensionReceiverParameterAnnotations:Ljava/util/List;

    return-object v0
.end method

.method public final getExtensions$kotlin_metadata()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/KmPropertyExtension;",
            ">;"
        }
    .end annotation

    .line 428
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/km/KmProperty;->extensions:Ljava/util/List;

    return-object v0
.end method

.method public final getFlags$kotlin_metadata()I
    .locals 1

    .line 316
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/km/KmProperty;->flags:I

    return v0
.end method

.method public final getGetter()Lkotlin/reflect/jvm/internal/impl/km/KmPropertyAccessorAttributes;
    .locals 1

    .line 333
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/km/KmProperty;->getter:Lkotlin/reflect/jvm/internal/impl/km/KmPropertyAccessorAttributes;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 317
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/km/KmProperty;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getReceiverParameterType()Lkotlin/reflect/jvm/internal/impl/km/KmType;
    .locals 1

    .line 357
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/km/KmProperty;->receiverParameterType:Lkotlin/reflect/jvm/internal/impl/km/KmType;

    return-object v0
.end method

.method public final getReturnType()Lkotlin/reflect/jvm/internal/impl/km/KmType;
    .locals 1

    .line 403
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/km/KmProperty;->returnType:Lkotlin/reflect/jvm/internal/impl/km/KmType;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "returnType"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getSetter()Lkotlin/reflect/jvm/internal/impl/km/KmPropertyAccessorAttributes;
    .locals 1

    .line 343
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/km/KmProperty;->setter:Lkotlin/reflect/jvm/internal/impl/km/KmPropertyAccessorAttributes;

    return-object v0
.end method

.method public final getSetterParameter()Lkotlin/reflect/jvm/internal/impl/km/KmValueParameter;
    .locals 1

    .line 398
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/km/KmProperty;->setterParameter:Lkotlin/reflect/jvm/internal/impl/km/KmValueParameter;

    return-object v0
.end method

.method public final getTypeParameters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/km/KmTypeParameter;",
            ">;"
        }
    .end annotation

    .line 352
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/km/KmProperty;->typeParameters:Ljava/util/List;

    return-object v0
.end method

.method public final getVersionRequirements()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/km/KmVersionRequirement;",
            ">;"
        }
    .end annotation

    .line 408
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/km/KmProperty;->versionRequirements:Ljava/util/List;

    return-object v0
.end method

.method public final setFlags$kotlin_metadata(I)V
    .locals 0

    .line 316
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/km/KmProperty;->flags:I

    return-void
.end method

.method public final setReceiverParameterType(Lkotlin/reflect/jvm/internal/impl/km/KmType;)V
    .locals 0

    .line 357
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/km/KmProperty;->receiverParameterType:Lkotlin/reflect/jvm/internal/impl/km/KmType;

    return-void
.end method

.method public final setReturnType(Lkotlin/reflect/jvm/internal/impl/km/KmType;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 403
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/km/KmProperty;->returnType:Lkotlin/reflect/jvm/internal/impl/km/KmType;

    return-void
.end method

.method public final setSetterParameter(Lkotlin/reflect/jvm/internal/impl/km/KmValueParameter;)V
    .locals 0

    .line 398
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/km/KmProperty;->setterParameter:Lkotlin/reflect/jvm/internal/impl/km/KmValueParameter;

    return-void
.end method
