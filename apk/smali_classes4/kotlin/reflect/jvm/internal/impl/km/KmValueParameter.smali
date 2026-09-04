.class public final Lkotlin/reflect/jvm/internal/impl/km/KmValueParameter;
.super Ljava/lang/Object;
.source "Nodes.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNodes.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Nodes.kt\nkotlin/metadata/KmValueParameter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,869:1\n1642#2,10:870\n1915#2:880\n1916#2:882\n1652#2:883\n1#3:881\n*S KotlinDebug\n*F\n+ 1 Nodes.kt\nkotlin/metadata/KmValueParameter\n*L\n515#1:870,10\n515#1:880\n515#1:882\n515#1:883\n515#1:881\n*E\n"
.end annotation


# instance fields
.field private annotationParameterDefaultValue:Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument;

.field private final annotations:Ljava/util/List;
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
            "Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/KmValueParameterExtension;",
            ">;"
        }
    .end annotation
.end field

.field private flags:I

.field private name:Ljava/lang/String;

.field public type:Lkotlin/reflect/jvm/internal/impl/km/KmType;

.field private varargElementType:Lkotlin/reflect/jvm/internal/impl/km/KmType;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 485
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 486
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/km/KmValueParameter;->flags:I

    .line 487
    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/km/KmValueParameter;->name:Ljava/lang/String;

    .line 512
    new-instance p1, Ljava/util/ArrayList;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/km/KmValueParameter;->annotations:Ljava/util/List;

    .line 515
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/MetadataExtensions;->Companion:Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/MetadataExtensions$Companion;

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/MetadataExtensions$Companion;->getINSTANCES$kotlin_metadata()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 870
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    check-cast p2, Ljava/util/Collection;

    .line 880
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 879
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/MetadataExtensions;

    .line 515
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/MetadataExtensions;->createValueParameterExtension()Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/KmValueParameterExtension;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 879
    invoke-interface {p2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 883
    :cond_1
    check-cast p2, Ljava/util/List;

    .line 515
    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/km/KmValueParameter;->extensions:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getAnnotationParameterDefaultValue()Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument;
    .locals 1

    .line 506
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/km/KmValueParameter;->annotationParameterDefaultValue:Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument;

    return-object v0
.end method

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

    .line 512
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/km/KmValueParameter;->annotations:Ljava/util/List;

    return-object v0
.end method

.method public final getFlags$kotlin_metadata()I
    .locals 1

    .line 486
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/km/KmValueParameter;->flags:I

    return v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 487
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/km/KmValueParameter;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()Lkotlin/reflect/jvm/internal/impl/km/KmType;
    .locals 1

    .line 496
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/km/KmValueParameter;->type:Lkotlin/reflect/jvm/internal/impl/km/KmType;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "type"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getVarargElementType()Lkotlin/reflect/jvm/internal/impl/km/KmType;
    .locals 1

    .line 501
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/km/KmValueParameter;->varargElementType:Lkotlin/reflect/jvm/internal/impl/km/KmType;

    return-object v0
.end method

.method public final setAnnotationParameterDefaultValue(Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument;)V
    .locals 0

    .line 506
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/km/KmValueParameter;->annotationParameterDefaultValue:Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument;

    return-void
.end method

.method public final setFlags$kotlin_metadata(I)V
    .locals 0

    .line 486
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/km/KmValueParameter;->flags:I

    return-void
.end method

.method public final setType(Lkotlin/reflect/jvm/internal/impl/km/KmType;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 496
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/km/KmValueParameter;->type:Lkotlin/reflect/jvm/internal/impl/km/KmType;

    return-void
.end method

.method public final setVarargElementType(Lkotlin/reflect/jvm/internal/impl/km/KmType;)V
    .locals 0

    .line 501
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/km/KmValueParameter;->varargElementType:Lkotlin/reflect/jvm/internal/impl/km/KmType;

    return-void
.end method
