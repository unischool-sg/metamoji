.class Lcom/metamoji/ui/ScrollButtonManager$12$1;
.super Ljava/lang/Object;
.source "ScrollButtonManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/ScrollButtonManager$12;->invoke(Lcom/metamoji/df/controller/PageEventContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/ui/ScrollButtonManager$12;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/ScrollButtonManager$12;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 703
    iput-object p1, p0, Lcom/metamoji/ui/ScrollButtonManager$12$1;->this$1:Lcom/metamoji/ui/ScrollButtonManager$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 706
    iget-object v0, p0, Lcom/metamoji/ui/ScrollButtonManager$12$1;->this$1:Lcom/metamoji/ui/ScrollButtonManager$12;

    iget-object v0, v0, Lcom/metamoji/ui/ScrollButtonManager$12;->this$0:Lcom/metamoji/ui/ScrollButtonManager;

    invoke-virtual {v0}, Lcom/metamoji/ui/ScrollButtonManager;->updateZoomInfo()V

    .line 707
    iget-object v0, p0, Lcom/metamoji/ui/ScrollButtonManager$12$1;->this$1:Lcom/metamoji/ui/ScrollButtonManager$12;

    iget-object v0, v0, Lcom/metamoji/ui/ScrollButtonManager$12;->this$0:Lcom/metamoji/ui/ScrollButtonManager;

    invoke-virtual {v0}, Lcom/metamoji/ui/ScrollButtonManager;->updateButtons()V

    .line 710
    iget-object v0, p0, Lcom/metamoji/ui/ScrollButtonManager$12$1;->this$1:Lcom/metamoji/ui/ScrollButtonManager$12;

    iget-object v0, v0, Lcom/metamoji/ui/ScrollButtonManager$12;->this$0:Lcom/metamoji/ui/ScrollButtonManager;

    invoke-virtual {v0}, Lcom/metamoji/ui/ScrollButtonManager;->updateSliderArrowButtons()V

    return-void
.end method
