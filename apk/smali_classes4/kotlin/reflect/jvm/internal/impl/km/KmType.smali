.class public final Lkotlin/reflect/jvm/internal/impl/km/KmType;
.super Ljava/lang/Object;
.source "Nodes.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNodes.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Nodes.kt\nkotlin/metadata/KmType\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,869:1\n1586#2:870\n1661#2,3:871\n*S KotlinDebug\n*F\n+ 1 Nodes.kt\nkotlin/metadata/KmType\n*L\n618#1:870\n618#1:871,3\n*E\n"
.end annotation


# instance fields
.field private abbreviatedType:Lkotlin/reflect/jvm/internal/impl/km/KmType;

.field private final arguments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/km/KmTypeProjection;",
            ">;"
        }
    .end annotation
.end field

.field public classifier:Lkotlin/reflect/jvm/internal/impl/km/KmClassifier;

.field private final extensions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/KmTypeExtension;",
            ">;"
        }
    .end annotation
.end field

.field private flags:I

.field private flexibleTypeUpperBound:Lkotlin/reflect/jvm/internal/impl/km/KmFlexibleTypeUpperBound;

.field private outerType:Lkotlin/reflect/jvm/internal/impl/km/KmType;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 575
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/km/KmType;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 571
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 572
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/km/KmType;->flags:I

    .line 585
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/km/KmType;->arguments:Ljava/util/List;

    .line 618
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/MetadataExtensions;->Companion:Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/MetadataExtensions$Companion;

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/MetadataExtensions$Companion;->getINSTANCES$kotlin_metadata()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 870
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 871
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 872
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/MetadataExtensions;

    .line 618
    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/MetadataExtensions;->createTypeExtension()Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/KmTypeExtension;

    move-result-object v1

    .line 872
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 873
    :cond_0
    check-cast v0, Ljava/util/List;

    .line 618
    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/km/KmType;->extensions:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 642
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 644
    :cond_2
    const-string v1, "null cannot be cast to non-null type kotlin.metadata.KmType"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/km/KmType;

    .line 646
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/km/KmType;->flags:I

    iget v3, p1, Lkotlin/reflect/jvm/internal/impl/km/KmType;->flags:I

    if-eq v1, v3, :cond_3

    return v2

    .line 647
    :cond_3
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/km/KmType;->getClassifier()Lkotlin/reflect/jvm/internal/impl/km/KmClassifier;

    move-result-object v1

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/km/KmType;->getClassifier()Lkotlin/reflect/jvm/internal/impl/km/KmClassifier;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 648
    :cond_4
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/km/KmType;->arguments:Ljava/util/List;

    iget-object v3, p1, Lkotlin/reflect/jvm/internal/impl/km/KmType;->arguments:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 649
    :cond_5
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/km/KmType;->outerType:Lkotlin/reflect/jvm/internal/impl/km/KmType;

    iget-object v3, p1, Lkotlin/reflect/jvm/internal/impl/km/KmType;->outerType:Lkotlin/reflect/jvm/internal/impl/km/KmType;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    .line 650
    :cond_6
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/km/KmType;->abbreviatedType:Lkotlin/reflect/jvm/internal/impl/km/KmType;

    iget-object v3, p1, Lkotlin/reflect/jvm/internal/impl/km/KmType;->abbreviatedType:Lkotlin/reflect/jvm/internal/impl/km/KmType;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    .line 651
    :cond_7
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/km/KmType;->flexibleTypeUpperBound:Lkotlin/reflect/jvm/internal/impl/km/KmFlexibleTypeUpperBound;

    iget-object v3, p1, Lkotlin/reflect/jvm/internal/impl/km/KmType;->flexibleTypeUpperBound:Lkotlin/reflect/jvm/internal/impl/km/KmFlexibleTypeUpperBound;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    .line 652
    :cond_8
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/km/KmType;->extensions:Ljava/util/List;

    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/km/KmType;->extensions:Ljava/util/List;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public final getAbbreviatedType()Lkotlin/reflect/jvm/internal/impl/km/KmType;
    .locals 1

    .line 596
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/km/KmType;->abbreviatedType:Lkotlin/reflect/jvm/internal/impl/km/KmType;

    return-object v0
.end method

.method public final getArguments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/km/KmTypeProjection;",
            ">;"
        }
    .end annotation

    .line 585
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/km/KmType;->arguments:Ljava/util/List;

    return-object v0
.end method

.method public final getClassifier()Lkotlin/reflect/jvm/internal/impl/km/KmClassifier;
    .locals 1

    .line 580
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/km/KmType;->classifier:Lkotlin/reflect/jvm/internal/impl/km/KmClassifier;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "classifier"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getExtensions$kotlin_metadata()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/KmTypeExtension;",
            ">;"
        }
    .end annotation

    .line 617
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/km/KmType;->extensions:Ljava/util/List;

    return-object v0
.end method

.method public final getFlags$kotlin_metadata()I
    .locals 1

    .line 572
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/km/KmType;->flags:I

    return v0
.end method

.method public final getFlexibleTypeUpperBound()Lkotlin/reflect/jvm/internal/impl/km/KmFlexibleTypeUpperBound;
    .locals 1

    .line 615
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/km/KmType;->flexibleTypeUpperBound:Lkotlin/reflect/jvm/internal/impl/km/KmFlexibleTypeUpperBound;

    return-object v0
.end method

.method public final getOuterType()Lkotlin/reflect/jvm/internal/impl/km/KmType;
    .locals 1

    .line 608
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/km/KmType;->outerType:Lkotlin/reflect/jvm/internal/impl/km/KmType;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 663
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/km/KmType;->flags:I

    mul-int/lit8 v0, v0, 0x1f

    .line 664
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/km/KmType;->getClassifier()Lkotlin/reflect/jvm/internal/impl/km/KmClassifier;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/km/KmClassifier;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 665
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/km/KmType;->arguments:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final setAbbreviatedType(Lkotlin/reflect/jvm/internal/impl/km/KmType;)V
    .locals 0

    .line 596
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/km/KmType;->abbreviatedType:Lkotlin/reflect/jvm/internal/impl/km/KmType;

    return-void
.end method

.method public final setClassifier(Lkotlin/reflect/jvm/internal/impl/km/KmClassifier;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 580
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/km/KmType;->classifier:Lkotlin/reflect/jvm/internal/impl/km/KmClassifier;

    return-void
.end method

.method public final setFlags$kotlin_metadata(I)V
    .locals 0

    .line 572
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/km/KmType;->flags:I

    return-void
.end method

.method public final setFlexibleTypeUpperBound(Lkotlin/reflect/jvm/internal/impl/km/KmFlexibleTypeUpperBound;)V
    .locals 0

    .line 615
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/km/KmType;->flexibleTypeUpperBound:Lkotlin/reflect/jvm/internal/impl/km/KmFlexibleTypeUpperBound;

    return-void
.end method

.method public final setOuterType(Lkotlin/reflect/jvm/internal/impl/km/KmType;)V
    .locals 0

    .line 608
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/km/KmType;->outerType:Lkotlin/reflect/jvm/internal/impl/km/KmType;

    return-void
.end method
