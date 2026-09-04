.class public final Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$Companion;
.super Ljava/lang/Object;
.source "ObservableList.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u001e\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J \u0010\u0004\u001a\u0008\u0012\u0004\u0012\u0002H\u00060\u0005\"\u0004\u0008\u0001\u0010\u00062\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u0002H\u00060\u0008J+\u0010\t\u001a\u0008\u0012\u0004\u0012\u0002H\u00060\u0005\"\u0004\u0008\u0001\u0010\u00062\u0012\u0010\n\u001a\n\u0012\u0006\u0008\u0001\u0012\u0002H\u00060\u000b\"\u0002H\u0006\u00a2\u0006\u0002\u0010\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$Companion;",
        "",
        "<init>",
        "()V",
        "from",
        "Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;",
        "T",
        "collection",
        "",
        "of",
        "e",
        "",
        "([Ljava/lang/Object;)Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;",
        "utils"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final from(Ljava/util/Collection;)Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+TT;>;)",
            "Lcom/metamoji/lib/utils/binding/impl/list/ObservableList<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "collection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    new-instance v0, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;

    invoke-direct {v0}, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;-><init>()V

    .line 16
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;->access$setInternalList$p(Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;Ljava/util/List;)V

    return-object v0
.end method

.method public final varargs of([Ljava/lang/Object;)Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Lcom/metamoji/lib/utils/binding/impl/list/ObservableList<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    new-instance v0, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;

    invoke-direct {v0}, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;-><init>()V

    .line 21
    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;->access$setInternalList$p(Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;Ljava/util/List;)V

    return-object v0
.end method
