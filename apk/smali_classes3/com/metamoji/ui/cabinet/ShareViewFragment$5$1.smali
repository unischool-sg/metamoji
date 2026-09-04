.class Lcom/metamoji/ui/cabinet/ShareViewFragment$5$1;
.super Ljava/lang/Object;
.source "ShareViewFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/ShareViewFragment$5;->onRefresh(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/ui/cabinet/ShareViewFragment$5;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/cabinet/ShareViewFragment$5;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 515
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment$5$1;->this$1:Lcom/metamoji/ui/cabinet/ShareViewFragment$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 520
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment$5$1;->this$1:Lcom/metamoji/ui/cabinet/ShareViewFragment$5;

    iget-object v0, v0, Lcom/metamoji/ui/cabinet/ShareViewFragment$5;->this$0:Lcom/metamoji/ui/cabinet/ShareViewFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/cabinet/ShareViewFragment;->update(Z)V

    return-void
.end method
