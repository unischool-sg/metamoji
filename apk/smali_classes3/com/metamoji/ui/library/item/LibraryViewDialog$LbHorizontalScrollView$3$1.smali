.class Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView$3$1;
.super Ljava/lang/Object;
.source "LibraryViewDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView$3;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView$3;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 2151
    iput-object p1, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView$3$1;->this$1:Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2154
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView$3$1;->this$1:Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView$3;

    iget-object v0, v0, Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView$3;->this$0:Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;

    invoke-virtual {v0}, Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;->fitPageAfterScrolled()V

    .line 2155
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView$3$1;->this$1:Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView$3;

    iget-object v0, v0, Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView$3;->this$0:Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;

    iget-object v0, v0, Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 2156
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView$3$1;->this$1:Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView$3;

    iget-object v0, v0, Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView$3;->this$0:Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;

    iget-object v0, v0, Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 2157
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView$3$1;->this$1:Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView$3;

    iget-object v0, v0, Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView$3;->this$0:Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;->mTimer:Ljava/util/Timer;

    :cond_0
    return-void
.end method
