.class Lcom/metamoji/ns/direction/NsDirectionManager$24$1;
.super Ljava/lang/Object;
.source "NsDirectionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/direction/NsDirectionManager$24;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/ns/direction/NsDirectionManager$24;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/direction/NsDirectionManager$24;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1667
    iput-object p1, p0, Lcom/metamoji/ns/direction/NsDirectionManager$24$1;->this$1:Lcom/metamoji/ns/direction/NsDirectionManager$24;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1670
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1672
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCollaboModeBar()Lcom/metamoji/ns/ui/NsCollaboModeViewBase;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1674
    const-string v1, "notyet"

    invoke-virtual {v0, v1}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->updateSchoolStatusBtn(Ljava/lang/String;)V

    .line 1678
    :cond_0
    invoke-static {}, Lcom/metamoji/ns/NsCollaboCommand;->updatePageInfoIcon()V

    return-void
.end method
