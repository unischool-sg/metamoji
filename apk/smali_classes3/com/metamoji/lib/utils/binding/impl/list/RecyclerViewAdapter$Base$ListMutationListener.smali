.class final Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewAdapter$Base$ListMutationListener;
.super Ljava/lang/Object;
.source "RecyclerViewAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewAdapter$Base;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ListMutationListener"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0016\u0010\u0004\u001a\u00020\u00052\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewAdapter$Base$ListMutationListener;",
        "",
        "<init>",
        "(Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewAdapter$Base;)V",
        "onListChanged",
        "",
        "t",
        "Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$MutationEventData;",
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
.field final synthetic this$0:Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewAdapter$Base;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewAdapter$Base<",
            "TT;TVH;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewAdapter$Base;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 34
    iput-object p1, p0, Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewAdapter$Base$ListMutationListener;->this$0:Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewAdapter$Base;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onListChanged(Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$MutationEventData;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$MutationEventData<",
            "TT;>;)V"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewAdapter$Base$ListMutationListener;->this$0:Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewAdapter$Base;

    invoke-virtual {v0, p1}, Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewAdapter$Base;->onListChanged(Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$MutationEventData;)V

    return-void
.end method
