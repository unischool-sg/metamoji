.class Lcom/metamoji/ns/direction/NsDirectionManager$32;
.super Ljava/lang/Object;
.source "NsDirectionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/direction/NsDirectionManager;->userModeChanged(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ns/direction/NsDirectionManager;

.field final synthetic val$existPresenter:Z

.field final synthetic val$userMode:I


# direct methods
.method constructor <init>(Lcom/metamoji/ns/direction/NsDirectionManager;IZ)V
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

    .line 1977
    iput-object p1, p0, Lcom/metamoji/ns/direction/NsDirectionManager$32;->this$0:Lcom/metamoji/ns/direction/NsDirectionManager;

    iput p2, p0, Lcom/metamoji/ns/direction/NsDirectionManager$32;->val$userMode:I

    iput-boolean p3, p0, Lcom/metamoji/ns/direction/NsDirectionManager$32;->val$existPresenter:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1980
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager$32;->this$0:Lcom/metamoji/ns/direction/NsDirectionManager;

    iget v1, p0, Lcom/metamoji/ns/direction/NsDirectionManager$32;->val$userMode:I

    iget-boolean v2, p0, Lcom/metamoji/ns/direction/NsDirectionManager$32;->val$existPresenter:Z

    invoke-static {v0, v1, v2}, Lcom/metamoji/ns/direction/NsDirectionManager;->-$$Nest$monUserModeChanged(Lcom/metamoji/ns/direction/NsDirectionManager;IZ)V

    .line 1984
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager$32;->this$0:Lcom/metamoji/ns/direction/NsDirectionManager;

    iget-object v0, v0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_document:Lcom/metamoji/nt/NtDocument;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v0

    .line 1985
    iget-object v1, p0, Lcom/metamoji/ns/direction/NsDirectionManager$32;->this$0:Lcom/metamoji/ns/direction/NsDirectionManager;

    invoke-virtual {v1, v0}, Lcom/metamoji/ns/direction/NsDirectionManager;->attachBoothForSchool(Lcom/metamoji/nt/NtPageController;)V

    .line 1988
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/ns/direction/NsDirectionManager$32$1;

    invoke-direct {v1, p0}, Lcom/metamoji/ns/direction/NsDirectionManager$32$1;-><init>(Lcom/metamoji/ns/direction/NsDirectionManager$32;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    .line 2003
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager$32;->this$0:Lcom/metamoji/ns/direction/NsDirectionManager;

    invoke-static {v0}, Lcom/metamoji/ns/direction/NsDirectionManager;->-$$Nest$fgetmUserModeChangedListener(Lcom/metamoji/ns/direction/NsDirectionManager;)Lcom/metamoji/cm/CmEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2004
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager$32;->this$0:Lcom/metamoji/ns/direction/NsDirectionManager;

    invoke-static {v0}, Lcom/metamoji/ns/direction/NsDirectionManager;->-$$Nest$fgetmUserModeChangedListener(Lcom/metamoji/ns/direction/NsDirectionManager;)Lcom/metamoji/cm/CmEventListener;

    move-result-object v0

    new-instance v1, Lcom/metamoji/ns/direction/NsUserModeChangedEvent;

    iget v2, p0, Lcom/metamoji/ns/direction/NsDirectionManager$32;->val$userMode:I

    iget-boolean v3, p0, Lcom/metamoji/ns/direction/NsDirectionManager$32;->val$existPresenter:Z

    invoke-direct {v1, v2, v3}, Lcom/metamoji/ns/direction/NsUserModeChangedEvent;-><init>(IZ)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmEventListener;->fire(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
