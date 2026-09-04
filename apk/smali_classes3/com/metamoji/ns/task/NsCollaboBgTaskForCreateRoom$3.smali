.class Lcom/metamoji/ns/task/NsCollaboBgTaskForCreateRoom$3;
.super Ljava/lang/Object;
.source "NsCollaboBgTaskForCreateRoom.java"

# interfaces
.implements Lcom/metamoji/ns/INsCollaboAction;


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

    .line 308
    iput-object p1, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForCreateRoom$3;->this$0:Lcom/metamoji/ns/task/NsCollaboBgTaskForCreateRoom;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public action(Z)V
    .locals 0

    .line 312
    iget-object p1, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForCreateRoom$3;->this$0:Lcom/metamoji/ns/task/NsCollaboBgTaskForCreateRoom;

    iget-boolean p1, p1, Lcom/metamoji/ns/task/NsCollaboBgTaskForCreateRoom;->deleteCurrentDocEvenIfCancel:Z

    if-eqz p1, :cond_0

    .line 313
    invoke-static {}, Lcom/metamoji/ns/NsCollaboCommand;->closeDocumentWithOriginalNoteDescard()V

    :cond_0
    return-void
.end method
