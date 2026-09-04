.class public final Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$enableGesture$1;
.super Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;
.source "RecyclerViewBinding.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding;->enableGesture(ZZLkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000+\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J \u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0007H\u0016J\u0018\u0010\t\u001a\u00020\n2\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u000cH\u0016\u00a8\u0006\r"
    }
    d2 = {
        "com/metamoji/lib/utils/binding/impl/RecyclerViewBinding$enableGesture$1",
        "Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;",
        "onMove",
        "",
        "recyclerView",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "viewHolder",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "target",
        "onSwiped",
        "",
        "direction",
        "",
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
.field final synthetic $deletionHandler:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "TT;",
            "Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$IDeletion;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $dragToMove:Z

.field final synthetic $swipeToDelete:Z

.field final synthetic this$0:Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(IIZLcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding;ZLkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ",
            "Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding<",
            "TT;>;Z",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;+",
            "Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$IDeletion;",
            ">;)V"
        }
    .end annotation

    iput-boolean p3, p0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$enableGesture$1;->$dragToMove:Z

    iput-object p4, p0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$enableGesture$1;->this$0:Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding;

    iput-boolean p5, p0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$enableGesture$1;->$swipeToDelete:Z

    iput-object p6, p0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$enableGesture$1;->$deletionHandler:Lkotlin/jvm/functions/Function1;

    .line 88
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;-><init>(II)V

    return-void
.end method

.method static final onSwiped$lambda$0(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding;ILjava/lang/Object;Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$IDeletion;Landroid/view/View;)V
    .locals 0

    const/4 p5, 0x1

    .line 113
    iput-boolean p5, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 114
    invoke-virtual {p1}, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding;->getList()Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;->add(ILjava/lang/Object;)V

    .line 115
    check-cast p4, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$IPendingDeletion;

    invoke-interface {p4}, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$IPendingDeletion;->rollback()V

    return-void
.end method

.method static final onSwiped$lambda$2$lambda$1(Lcom/google/android/material/snackbar/Snackbar;Landroid/view/View;)V
    .locals 0

    .line 124
    invoke-virtual {p0}, Lcom/google/android/material/snackbar/Snackbar;->dismiss()V

    return-void
.end method


# virtual methods
.method public onMove(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p1, "viewHolder"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p1, "target"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    iget-boolean p1, p0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$enableGesture$1;->$dragToMove:Z

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 91
    :cond_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result p1

    .line 92
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result p2

    if-ne p1, p2, :cond_1

    return v0

    .line 94
    :cond_1
    iget-object p3, p0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$enableGesture$1;->this$0:Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding;

    invoke-virtual {p3}, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding;->getList()Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;->move(II)V

    const/4 p1, 0x1

    return p1
.end method

.method public onSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 6

    const-string/jumbo p2, "viewHolder"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    iget-boolean p2, p0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$enableGesture$1;->$swipeToDelete:Z

    if-nez p2, :cond_0

    goto :goto_1

    .line 100
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result v3

    .line 101
    iget-object p1, p0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$enableGesture$1;->this$0:Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding;

    invoke-virtual {p1}, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding;->getList()Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 102
    iget-object p1, p0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$enableGesture$1;->$deletionHandler:Lkotlin/jvm/functions/Function1;

    if-eqz p1, :cond_1

    invoke-interface {p1, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$IDeletion;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    move-object v5, p1

    .line 103
    iget-object p1, p0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$enableGesture$1;->this$0:Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding;

    invoke-virtual {p1}, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding;->getList()Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;->remove(I)Ljava/lang/Object;

    .line 104
    instance-of p1, v5, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$IPendingDeletion;

    if-nez p1, :cond_3

    if-eqz v5, :cond_2

    .line 106
    invoke-interface {v5}, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$IDeletion;->commit()V

    :cond_2
    :goto_1
    return-void

    .line 108
    :cond_3
    move-object p1, v5

    check-cast p1, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$IPendingDeletion;

    invoke-interface {p1}, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$IPendingDeletion;->getItemLabel()Ljava/lang/String;

    move-result-object p2

    .line 110
    new-instance v1, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 112
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$enableGesture$1;->this$0:Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding;

    invoke-virtual {v0}, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding;->getView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    check-cast p2, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    invoke-static {v0, p2, v2}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p2

    invoke-interface {p1}, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$IPendingDeletion;->getUndoButtonLabel()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_4

    const-string p1, "Undo"

    :cond_4
    check-cast p1, Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$enableGesture$1;->this$0:Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding;

    new-instance v0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$enableGesture$1$$ExternalSyntheticLambda0;

    invoke-direct/range {v0 .. v5}, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$enableGesture$1$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding;ILjava/lang/Object;Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$IDeletion;)V

    invoke-virtual {p2, p1, v0}, Lcom/google/android/material/snackbar/Snackbar;->setAction(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    .line 116
    new-instance p2, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$enableGesture$1$onSwiped$2;

    invoke-direct {p2, v1, v5}, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$enableGesture$1$onSwiped$2;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$IDeletion;)V

    check-cast p2, Lcom/google/android/material/snackbar/BaseTransientBottomBar$BaseCallback;

    invoke-virtual {p1, p2}, Lcom/google/android/material/snackbar/Snackbar;->addCallback(Lcom/google/android/material/snackbar/BaseTransientBottomBar$BaseCallback;)Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    move-result-object p1

    .line 123
    check-cast p1, Lcom/google/android/material/snackbar/Snackbar;

    .line 124
    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->getView()Landroid/view/View;

    move-result-object p2

    new-instance v0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$enableGesture$1$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$enableGesture$1$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/material/snackbar/Snackbar;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    return-void
.end method
