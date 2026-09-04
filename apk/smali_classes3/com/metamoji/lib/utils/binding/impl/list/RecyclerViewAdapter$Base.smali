.class public abstract Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewAdapter$Base;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "RecyclerViewAdapter.kt"

# interfaces
.implements Lcom/metamoji/lib/utils/IDisposable;
.implements Lcom/metamoji/lib/utils/binding/impl/list/IRecyclerViewInsertEventSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Base"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewAdapter$Base$ListMutationListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "VH:",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "TVH;>;",
        "Lcom/metamoji/lib/utils/IDisposable;",
        "Lcom/metamoji/lib/utils/binding/impl/list/IRecyclerViewInsertEventSource;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008&\u0018\u0000*\u0004\u0008\u0000\u0010\u0001*\u0008\u0008\u0001\u0010\u0002*\u00020\u00032\u00020\u00042\u00020\u00052\u0008\u0012\u0004\u0012\u0002H\u00020\u0006:\u0001-B\u001d\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00028\u00000\n\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0008\u0010 \u001a\u00020\u001bH\u0017J\u0018\u0010!\u001a\u00020\u001b2\u000e\u0010\"\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010#H\u0015J\u0008\u0010$\u001a\u00020\u0014H\u0016J\u001d\u0010%\u001a\u00028\u00012\u0006\u0010&\u001a\u00020\'2\u0006\u0010(\u001a\u00020\u0014H&\u00a2\u0006\u0002\u0010)J\u001d\u0010*\u001a\u00020\u001b2\u0006\u0010+\u001a\u00028\u00012\u0006\u0010\u0017\u001a\u00020\u0014H&\u00a2\u0006\u0002\u0010,R\u0017\u0010\t\u001a\u0008\u0012\u0004\u0012\u00028\u00000\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u001e\u0010\u000f\u001a\u00120\u0010R\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0000X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000Ra\u0010\u0012\u001aI\u0012\u0013\u0012\u00110\u0014\u00a2\u0006\u000c\u0008\u0015\u0012\u0008\u0008\u0016\u0012\u0004\u0008\u0008(\u0017\u0012\u0013\u0012\u00110\u0014\u00a2\u0006\u000c\u0008\u0015\u0012\u0008\u0008\u0016\u0012\u0004\u0008\u0008(\u0018\u0012\u0013\u0012\u00110\u0019\u00a2\u0006\u000c\u0008\u0015\u0012\u0008\u0008\u0016\u0012\u0004\u0008\u0008(\u001a\u0012\u0004\u0012\u00020\u001b\u0018\u00010\u0013X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001f\u00a8\u0006."
    }
    d2 = {
        "Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewAdapter$Base;",
        "T",
        "VH",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Lcom/metamoji/lib/utils/IDisposable;",
        "Lcom/metamoji/lib/utils/binding/impl/list/IRecyclerViewInsertEventSource;",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "owner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "list",
        "Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;",
        "<init>",
        "(Landroidx/lifecycle/LifecycleOwner;Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;)V",
        "getList",
        "()Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;",
        "listMutationListener",
        "Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewAdapter$Base$ListMutationListener;",
        "listenerKey",
        "insertedEventListener",
        "Lkotlin/Function3;",
        "",
        "Lkotlin/ParameterName;",
        "name",
        "position",
        "range",
        "",
        "isLast",
        "",
        "getInsertedEventListener",
        "()Lkotlin/jvm/functions/Function3;",
        "setInsertedEventListener",
        "(Lkotlin/jvm/functions/Function3;)V",
        "dispose",
        "onListChanged",
        "t",
        "Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$MutationEventData;",
        "getItemCount",
        "onCreateViewHolder",
        "parent",
        "Landroid/view/ViewGroup;",
        "viewType",
        "(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "onBindViewHolder",
        "holder",
        "(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V",
        "ListMutationListener",
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
.field private insertedEventListener:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final list:Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/lib/utils/binding/impl/list/ObservableList<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final listMutationListener:Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewAdapter$Base$ListMutationListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewAdapter$Base<",
            "TT;TVH;>.",
            "ListMutationListener;"
        }
    .end annotation
.end field

.field private listenerKey:Lcom/metamoji/lib/utils/IDisposable;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/LifecycleOwner;Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Lcom/metamoji/lib/utils/binding/impl/list/ObservableList<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "list"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 27
    iput-object p2, p0, Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewAdapter$Base;->list:Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;

    .line 39
    new-instance v0, Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewAdapter$Base$ListMutationListener;

    invoke-direct {v0, p0}, Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewAdapter$Base$ListMutationListener;-><init>(Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewAdapter$Base;)V

    iput-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewAdapter$Base;->listMutationListener:Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewAdapter$Base$ListMutationListener;

    .line 40
    new-instance v1, Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewAdapter$Base$listenerKey$1;

    invoke-direct {v1, v0}, Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewAdapter$Base$listenerKey$1;-><init>(Ljava/lang/Object;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p2, p1, v1}, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;->addListener(Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function1;)Lcom/metamoji/lib/utils/IDisposable;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewAdapter$Base;->listenerKey:Lcom/metamoji/lib/utils/IDisposable;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewAdapter$Base;->listenerKey:Lcom/metamoji/lib/utils/IDisposable;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 52
    iput-object v1, p0, Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewAdapter$Base;->listenerKey:Lcom/metamoji/lib/utils/IDisposable;

    .line 53
    invoke-interface {v0}, Lcom/metamoji/lib/utils/IDisposable;->dispose()V

    :cond_0
    return-void
.end method

.method public getInsertedEventListener()Lkotlin/jvm/functions/Function3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function3<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewAdapter$Base;->insertedEventListener:Lkotlin/jvm/functions/Function3;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewAdapter$Base;->list:Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;

    invoke-virtual {v0}, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;->size()I

    move-result v0

    return v0
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

    .line 27
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewAdapter$Base;->list:Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;

    return-object v0
.end method

.method public abstract onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation
.end method

.method public abstract onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation
.end method

.method protected onListChanged(Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$MutationEventData;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$MutationEventData<",
            "TT;>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    goto/16 :goto_1

    .line 65
    :cond_0
    instance-of v0, p1, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$ChangedEventData;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$ChangedEventData;

    invoke-virtual {p1}, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$ChangedEventData;->getPosition()I

    move-result v0

    invoke-virtual {p1}, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$ChangedEventData;->getRange()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewAdapter$Base;->notifyItemRangeChanged(II)V

    return-void

    .line 66
    :cond_1
    instance-of v0, p1, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$MoveEventData;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$MoveEventData;

    invoke-virtual {p1}, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$MoveEventData;->getFrom()I

    move-result v0

    invoke-virtual {p1}, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$MoveEventData;->getTo()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewAdapter$Base;->notifyItemMoved(II)V

    return-void

    .line 67
    :cond_2
    instance-of v0, p1, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$RemoveEventData;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$RemoveEventData;

    invoke-virtual {p1}, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$RemoveEventData;->getPosition()I

    move-result v0

    invoke-virtual {p1}, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$RemoveEventData;->getRange()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewAdapter$Base;->notifyItemRangeRemoved(II)V

    return-void

    .line 68
    :cond_3
    instance-of v0, p1, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$InsertEventData;

    if-eqz v0, :cond_6

    .line 69
    check-cast p1, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$InsertEventData;

    invoke-virtual {p1}, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$InsertEventData;->getPosition()I

    move-result v0

    invoke-virtual {p1}, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$InsertEventData;->getRange()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewAdapter$Base;->notifyItemRangeInserted(II)V

    .line 70
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewAdapter$Base;->getInsertedEventListener()Lkotlin/jvm/functions/Function3;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$InsertEventData;->getPosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$InsertEventData;->getRange()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1}, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$InsertEventData;->getPosition()I

    move-result v3

    invoke-virtual {p1}, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$InsertEventData;->getRange()I

    move-result p1

    add-int/2addr v3, p1

    iget-object p1, p0, Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewAdapter$Base;->list:Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;

    invoke-virtual {p1}, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;->size()I

    move-result p1

    if-ne v3, p1, :cond_4

    const/4 p1, 0x1

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, v1, v2, p1}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_1
    return-void

    .line 73
    :cond_6
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewAdapter$Base;->notifyDataSetChanged()V

    return-void
.end method

.method public setInsertedEventListener(Lkotlin/jvm/functions/Function3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 44
    iput-object p1, p0, Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewAdapter$Base;->insertedEventListener:Lkotlin/jvm/functions/Function3;

    return-void
.end method
