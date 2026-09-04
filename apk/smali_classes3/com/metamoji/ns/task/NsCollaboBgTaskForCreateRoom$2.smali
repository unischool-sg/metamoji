.class Lcom/metamoji/ns/task/NsCollaboBgTaskForCreateRoom$2;
.super Ljava/lang/Object;
.source "NsCollaboBgTaskForCreateRoom.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/task/NsCollaboBgTaskForCreateRoom;->taskExec()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ns/task/NsCollaboBgTaskForCreateRoom;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/task/NsCollaboBgTaskForCreateRoom;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 224
    iput-object p1, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForCreateRoom$2;->this$0:Lcom/metamoji/ns/task/NsCollaboBgTaskForCreateRoom;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 227
    iget-object v0, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForCreateRoom$2;->this$0:Lcom/metamoji/ns/task/NsCollaboBgTaskForCreateRoom;

    iget-object v0, v0, Lcom/metamoji/ns/task/NsCollaboBgTaskForCreateRoom;->viewController:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_isDoneProcessing:Z

    .line 228
    iget-object v0, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForCreateRoom$2;->this$0:Lcom/metamoji/ns/task/NsCollaboBgTaskForCreateRoom;

    iget-object v0, v0, Lcom/metamoji/ns/task/NsCollaboBgTaskForCreateRoom;->viewController:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;

    invoke-virtual {v0}, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->dismiss()V

    return-void
.end method
