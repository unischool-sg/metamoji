.class Lcom/metamoji/ui/ScrollButtonManager$12;
.super Ljava/lang/Object;
.source "ScrollButtonManager.java"

# interfaces
.implements Lcom/metamoji/cm/ICmEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/ScrollButtonManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/metamoji/cm/ICmEventHandler<",
        "Lcom/metamoji/df/controller/PageEventContext;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/ScrollButtonManager;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/ScrollButtonManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 697
    iput-object p1, p0, Lcom/metamoji/ui/ScrollButtonManager$12;->this$0:Lcom/metamoji/ui/ScrollButtonManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lcom/metamoji/df/controller/PageEventContext;)V
    .locals 2

    .line 700
    iget-object v0, p0, Lcom/metamoji/ui/ScrollButtonManager$12;->this$0:Lcom/metamoji/ui/ScrollButtonManager;

    invoke-virtual {p1}, Lcom/metamoji/df/controller/PageEventContext;->getNumberOfPages()I

    move-result v1

    invoke-static {v0, v1}, Lcom/metamoji/ui/ScrollButtonManager;->-$$Nest$fput_pages(Lcom/metamoji/ui/ScrollButtonManager;I)V

    .line 701
    iget-object v0, p0, Lcom/metamoji/ui/ScrollButtonManager$12;->this$0:Lcom/metamoji/ui/ScrollButtonManager;

    invoke-virtual {p1}, Lcom/metamoji/df/controller/PageEventContext;->getCurrentPageIndex()I

    move-result p1

    invoke-static {v0, p1}, Lcom/metamoji/ui/ScrollButtonManager;->-$$Nest$fput_currentPage(Lcom/metamoji/ui/ScrollButtonManager;I)V

    .line 703
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance v0, Lcom/metamoji/ui/ScrollButtonManager$12$1;

    invoke-direct {v0, p0}, Lcom/metamoji/ui/ScrollButtonManager$12$1;-><init>(Lcom/metamoji/ui/ScrollButtonManager$12;)V

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 697
    check-cast p1, Lcom/metamoji/df/controller/PageEventContext;

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/ScrollButtonManager$12;->invoke(Lcom/metamoji/df/controller/PageEventContext;)V

    return-void
.end method
