.class Lcom/metamoji/ui/ScrollButtonManager$5;
.super Ljava/lang/Object;
.source "ScrollButtonManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/ScrollButtonManager;->setHideCondition(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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

    .line 251
    iput-object p1, p0, Lcom/metamoji/ui/ScrollButtonManager$5;->this$0:Lcom/metamoji/ui/ScrollButtonManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 254
    iget-object v0, p0, Lcom/metamoji/ui/ScrollButtonManager$5;->this$0:Lcom/metamoji/ui/ScrollButtonManager;

    invoke-virtual {v0}, Lcom/metamoji/ui/ScrollButtonManager;->isVisibilitySliderArrowButtons()Z

    move-result v0

    .line 257
    iget-object v1, p0, Lcom/metamoji/ui/ScrollButtonManager$5;->this$0:Lcom/metamoji/ui/ScrollButtonManager;

    if-eqz v0, :cond_0

    .line 255
    invoke-virtual {v1}, Lcom/metamoji/ui/ScrollButtonManager;->showSliderArrowButtons()V

    return-void

    .line 257
    :cond_0
    invoke-virtual {v1}, Lcom/metamoji/ui/ScrollButtonManager;->hideSliderArrowButtons()V

    return-void
.end method
