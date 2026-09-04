.class public abstract Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$MutationEventData;
.super Ljava/lang/Object;
.source "ObservableList.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "MutationEventData"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008&\u0018\u0000*\u0004\u0008\u0001\u0010\u00012\u00020\u0002B\u001d\u0012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u0017\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$MutationEventData;",
        "T",
        "",
        "list",
        "Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;",
        "kind",
        "Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$MutationKind;",
        "<init>",
        "(Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$MutationKind;)V",
        "getList",
        "()Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;",
        "getKind",
        "()Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$MutationKind;",
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


# instance fields
.field private final kind:Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$MutationKind;

.field private final list:Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/lib/utils/binding/impl/list/ObservableList<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$MutationKind;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/lib/utils/binding/impl/list/ObservableList<",
            "TT;>;",
            "Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$MutationKind;",
            ")V"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kind"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$MutationEventData;->list:Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;

    iput-object p2, p0, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$MutationEventData;->kind:Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$MutationKind;

    return-void
.end method


# virtual methods
.method public final getKind()Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$MutationKind;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$MutationEventData;->kind:Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$MutationKind;

    return-object v0
.end method

.method public final getList()Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/metamoji/lib/utils/binding/impl/list/ObservableList<",
            "TT;>;"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$MutationEventData;->list:Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;

    return-object v0
.end method
