.class Lcom/metamoji/nt/NtUnitController$6$1;
.super Ljava/lang/Object;
.source "NtUnitController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtUnitController$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/nt/NtUnitController$6;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtUnitController$6;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1568
    iput-object p1, p0, Lcom/metamoji/nt/NtUnitController$6$1;->this$1:Lcom/metamoji/nt/NtUnitController$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1571
    iget-object v0, p0, Lcom/metamoji/nt/NtUnitController$6$1;->this$1:Lcom/metamoji/nt/NtUnitController$6;

    iget-object v0, v0, Lcom/metamoji/nt/NtUnitController$6;->this$0:Lcom/metamoji/nt/NtUnitController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/metamoji/nt/NtUnitController;->-$$Nest$fput_calledUpdateViewmodeHighlight(Lcom/metamoji/nt/NtUnitController;Z)V

    .line 1572
    iget-object v0, p0, Lcom/metamoji/nt/NtUnitController$6$1;->this$1:Lcom/metamoji/nt/NtUnitController$6;

    iget-object v0, v0, Lcom/metamoji/nt/NtUnitController$6;->this$0:Lcom/metamoji/nt/NtUnitController;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtUnitController;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1573
    iget-object v0, p0, Lcom/metamoji/nt/NtUnitController$6$1;->this$1:Lcom/metamoji/nt/NtUnitController$6;

    iget-object v0, v0, Lcom/metamoji/nt/NtUnitController$6;->this$0:Lcom/metamoji/nt/NtUnitController;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtUnitController;->updateViewModeHighlightText()V

    :cond_0
    return-void
.end method
