.class public final Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$RefreshEventData;
.super Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$MutationEventData;
.source "ObservableList.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RefreshEventData"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$MutationEventData<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000*\u0004\u0008\u0001\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002B\u0015\u0012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$RefreshEventData;",
        "T",
        "Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$MutationEventData;",
        "sender",
        "Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;",
        "<init>",
        "(Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;)V",
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
.method public constructor <init>(Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/lib/utils/binding/impl/list/ObservableList<",
            "TT;>;)V"
        }
    .end annotation

    const-string/jumbo v0, "sender"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    sget-object v0, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$MutationKind;->REFRESH:Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$MutationKind;

    invoke-direct {p0, p1, v0}, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$MutationEventData;-><init>(Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$MutationKind;)V

    return-void
.end method
