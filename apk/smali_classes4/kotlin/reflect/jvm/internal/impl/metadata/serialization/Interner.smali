.class public final Lkotlin/reflect/jvm/internal/impl/metadata/serialization/Interner;
.super Ljava/lang/Object;
.source "Interner.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nInterner.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Interner.kt\norg/jetbrains/kotlin/metadata/serialization/Interner\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,30:1\n1#2:31\n1068#3:32\n*S KotlinDebug\n*F\n+ 1 Interner.kt\norg/jetbrains/kotlin/metadata/serialization/Interner\n*L\n13#1:32\n*E\n"
.end annotation


# instance fields
.field private final firstIndex:I

.field private final interned:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "TT;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final parent:Lkotlin/reflect/jvm/internal/impl/metadata/serialization/Interner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/impl/metadata/serialization/Interner<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private final find(Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/serialization/Interner;->parent:Lkotlin/reflect/jvm/internal/impl/metadata/serialization/Interner;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/metadata/serialization/Interner;->interned:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/serialization/Interner;->parent:Lkotlin/reflect/jvm/internal/impl/metadata/serialization/Interner;

    iget v1, v1, Lkotlin/reflect/jvm/internal/impl/metadata/serialization/Interner;->firstIndex:I

    add-int/2addr v0, v1

    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/serialization/Interner;->firstIndex:I

    .line 22
    :cond_0
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/serialization/Interner;->parent:Lkotlin/reflect/jvm/internal/impl/metadata/serialization/Interner;

    if-eqz v0, :cond_2

    invoke-direct {v0, p1}, Lkotlin/reflect/jvm/internal/impl/metadata/serialization/Interner;->find(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_0
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/serialization/Interner;->interned:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    return-object p1
.end method


# virtual methods
.method public final intern(Ljava/lang/Object;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/metadata/serialization/Interner;->find(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_0
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/serialization/Interner;->firstIndex:I

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/serialization/Interner;->interned:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 27
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/serialization/Interner;->interned:Ljava/util/HashMap;

    check-cast v1, Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v0
.end method
