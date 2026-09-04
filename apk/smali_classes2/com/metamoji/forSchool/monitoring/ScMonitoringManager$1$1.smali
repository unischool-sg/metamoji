.class Lcom/metamoji/forSchool/monitoring/ScMonitoringManager$1$1;
.super Ljava/lang/Object;
.source "ScMonitoringManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/forSchool/monitoring/ScMonitoringManager$1;->invoke(Lcom/metamoji/df/controller/PageEventContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/forSchool/monitoring/ScMonitoringManager$1;

.field final synthetic val$arg:Lcom/metamoji/df/controller/PageEventContext;


# direct methods
.method constructor <init>(Lcom/metamoji/forSchool/monitoring/ScMonitoringManager$1;Lcom/metamoji/df/controller/PageEventContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 89
    iput-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager$1$1;->this$1:Lcom/metamoji/forSchool/monitoring/ScMonitoringManager$1;

    iput-object p2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager$1$1;->val$arg:Lcom/metamoji/df/controller/PageEventContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 92
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    .line 93
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    .line 95
    sget-object v1, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager$2;->$SwitchMap$com$metamoji$df$controller$PageEventContext$Kind:[I

    iget-object v2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager$1$1;->val$arg:Lcom/metamoji/df/controller/PageEventContext;

    invoke-virtual {v2}, Lcom/metamoji/df/controller/PageEventContext;->getKind()Lcom/metamoji/df/controller/PageEventContext$Kind;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/df/controller/PageEventContext$Kind;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    return-void

    .line 105
    :cond_0
    iget-object v1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager$1$1;->this$1:Lcom/metamoji/forSchool/monitoring/ScMonitoringManager$1;

    iget-object v1, v1, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager$1;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->pageIds()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->pageMoved(Ljava/util/List;)V

    return-void

    .line 101
    :cond_1
    iget-object v1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager$1$1;->this$1:Lcom/metamoji/forSchool/monitoring/ScMonitoringManager$1;

    iget-object v1, v1, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager$1;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->pageIds()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->pageRemoved(Ljava/util/List;)V

    return-void

    .line 97
    :cond_2
    iget-object v1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager$1$1;->this$1:Lcom/metamoji/forSchool/monitoring/ScMonitoringManager$1;

    iget-object v1, v1, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager$1;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->pageIds()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->pageAdded(Ljava/util/List;)V

    return-void
.end method
