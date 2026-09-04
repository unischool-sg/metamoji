.class Lcom/metamoji/ui/ScrollButtonManager$13$1;
.super Ljava/lang/Object;
.source "ScrollButtonManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/ScrollButtonManager$13;->invoke(Lcom/metamoji/df/controller/DfPageController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/ui/ScrollButtonManager$13;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/ScrollButtonManager$13;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 720
    iput-object p1, p0, Lcom/metamoji/ui/ScrollButtonManager$13$1;->this$1:Lcom/metamoji/ui/ScrollButtonManager$13;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 723
    iget-object v0, p0, Lcom/metamoji/ui/ScrollButtonManager$13$1;->this$1:Lcom/metamoji/ui/ScrollButtonManager$13;

    iget-object v0, v0, Lcom/metamoji/ui/ScrollButtonManager$13;->this$0:Lcom/metamoji/ui/ScrollButtonManager;

    invoke-virtual {v0}, Lcom/metamoji/ui/ScrollButtonManager;->updateZoomInfo()V

    return-void
.end method
