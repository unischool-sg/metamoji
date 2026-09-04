.class public final Lcom/metamoji/lib/utils/binding/impl/list/ObservableListKt;
.super Ljava/lang/Object;
.source "ObservableList.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0008\u0002\n\u0002\u0010\u001e\n\u0000\u001a+\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\u0008\u0000\u0010\u00022\u0012\u0010\u0003\u001a\n\u0012\u0006\u0008\u0001\u0012\u0002H\u00020\u0004\"\u0002H\u0002\u00a2\u0006\u0002\u0010\u0005\u001a\u001c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002*\u0008\u0012\u0004\u0012\u0002H\u00020\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "observableListOf",
        "Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;",
        "T",
        "e",
        "",
        "([Ljava/lang/Object;)Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;",
        "toObservableList",
        "",
        "utils"
    }
    k = 0x2
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final varargs observableListOf([Ljava/lang/Object;)Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;
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

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    sget-object v0, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;->Companion:Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$Companion;

    array-length v1, p0

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$Companion;->of([Ljava/lang/Object;)Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;

    move-result-object p0

    return-object p0
.end method

.method public static final toObservableList(Ljava/util/Collection;)Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;
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

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    sget-object v0, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;->Companion:Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$Companion;

    invoke-virtual {v0, p0}, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$Companion;->from(Ljava/util/Collection;)Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;

    move-result-object p0

    return-object p0
.end method
