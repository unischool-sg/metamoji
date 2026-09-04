.class Lcom/metamoji/ui/ScrollButtonManager$16;
.super Ljava/lang/Object;
.source "ScrollButtonManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/ScrollButtonManager;->notifyEnableCommand(Lcom/metamoji/nt/NtCommand;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/ScrollButtonManager;

.field final synthetic val$command:Lcom/metamoji/nt/NtCommand;

.field final synthetic val$enabled:Z


# direct methods
.method constructor <init>(Lcom/metamoji/ui/ScrollButtonManager;Lcom/metamoji/nt/NtCommand;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1569
    iput-object p1, p0, Lcom/metamoji/ui/ScrollButtonManager$16;->this$0:Lcom/metamoji/ui/ScrollButtonManager;

    iput-object p2, p0, Lcom/metamoji/ui/ScrollButtonManager$16;->val$command:Lcom/metamoji/nt/NtCommand;

    iput-boolean p3, p0, Lcom/metamoji/ui/ScrollButtonManager$16;->val$enabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1573
    sget-object v0, Lcom/metamoji/ui/ScrollButtonManager$21;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    iget-object v1, p0, Lcom/metamoji/ui/ScrollButtonManager$16;->val$command:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v1}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    return-void

    .line 1591
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/ScrollButtonManager$16;->this$0:Lcom/metamoji/ui/ScrollButtonManager;

    invoke-virtual {v0}, Lcom/metamoji/ui/ScrollButtonManager;->updateButtons()V

    .line 1594
    iget-object v0, p0, Lcom/metamoji/ui/ScrollButtonManager$16;->this$0:Lcom/metamoji/ui/ScrollButtonManager;

    invoke-virtual {v0}, Lcom/metamoji/ui/ScrollButtonManager;->updateSliderArrowButtons()V

    return-void

    .line 1575
    :cond_1
    iget-object v0, p0, Lcom/metamoji/ui/ScrollButtonManager$16;->this$0:Lcom/metamoji/ui/ScrollButtonManager;

    invoke-static {v0}, Lcom/metamoji/ui/ScrollButtonManager;->-$$Nest$fget_editorPage(Lcom/metamoji/ui/ScrollButtonManager;)Lcom/metamoji/noteanytime/EditorActivity;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1576
    iget-boolean v0, p0, Lcom/metamoji/ui/ScrollButtonManager$16;->val$enabled:Z

    .line 1579
    iget-object v2, p0, Lcom/metamoji/ui/ScrollButtonManager$16;->this$0:Lcom/metamoji/ui/ScrollButtonManager;

    if-eqz v0, :cond_2

    .line 1577
    invoke-static {v2}, Lcom/metamoji/ui/ScrollButtonManager;->-$$Nest$fget_editorPage(Lcom/metamoji/ui/ScrollButtonManager;)Lcom/metamoji/noteanytime/EditorActivity;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/metamoji/noteanytime/EditorActivity;->showZoomBar(Z)V

    goto :goto_0

    .line 1579
    :cond_2
    invoke-static {v2}, Lcom/metamoji/ui/ScrollButtonManager;->-$$Nest$fget_editorPage(Lcom/metamoji/ui/ScrollButtonManager;)Lcom/metamoji/noteanytime/EditorActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/noteanytime/EditorActivity;->hideZoomBar()V

    .line 1582
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/metamoji/ui/ScrollButtonManager$16;->this$0:Lcom/metamoji/ui/ScrollButtonManager;

    invoke-virtual {v0}, Lcom/metamoji/ui/ScrollButtonManager;->updateButtons()V

    .line 1585
    iget-object v0, p0, Lcom/metamoji/ui/ScrollButtonManager$16;->this$0:Lcom/metamoji/ui/ScrollButtonManager;

    invoke-virtual {v0}, Lcom/metamoji/ui/ScrollButtonManager;->updateSliderArrowButtons()V

    return-void
.end method
