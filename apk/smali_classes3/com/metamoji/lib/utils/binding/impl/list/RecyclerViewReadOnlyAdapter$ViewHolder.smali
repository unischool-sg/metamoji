.class public final Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewReadOnlyAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "RecyclerViewReadOnlyAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewReadOnlyAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ViewHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewReadOnlyAdapter$ViewHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "itemView",
        "Landroid/view/View;",
        "<init>",
        "(Landroid/view/View;)V",
        "binder",
        "Lcom/metamoji/lib/utils/binding/Binder;",
        "getBinder",
        "()Lcom/metamoji/lib/utils/binding/Binder;",
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
.field private final binder:Lcom/metamoji/lib/utils/binding/Binder;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 31
    new-instance p1, Lcom/metamoji/lib/utils/binding/Binder;

    invoke-direct {p1}, Lcom/metamoji/lib/utils/binding/Binder;-><init>()V

    iput-object p1, p0, Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewReadOnlyAdapter$ViewHolder;->binder:Lcom/metamoji/lib/utils/binding/Binder;

    return-void
.end method


# virtual methods
.method public final getBinder()Lcom/metamoji/lib/utils/binding/Binder;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewReadOnlyAdapter$ViewHolder;->binder:Lcom/metamoji/lib/utils/binding/Binder;

    return-object v0
.end method
