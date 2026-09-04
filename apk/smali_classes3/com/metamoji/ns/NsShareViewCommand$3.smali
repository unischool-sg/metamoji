.class Lcom/metamoji/ns/NsShareViewCommand$3;
.super Ljava/lang/Object;
.source "NsShareViewCommand.java"

# interfaces
.implements Lcom/metamoji/ns/INsCollaboAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/NsShareViewCommand;->handleCollaboRoomEdit(Ljava/lang/String;Lcom/metamoji/ns/INsShareViewCommandCompletionAction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$completionAction:Lcom/metamoji/ns/INsShareViewCommandCompletionAction;

.field final synthetic val$roomId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/metamoji/ns/INsShareViewCommandCompletionAction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 259
    iput-object p1, p0, Lcom/metamoji/ns/NsShareViewCommand$3;->val$roomId:Ljava/lang/String;

    iput-object p2, p0, Lcom/metamoji/ns/NsShareViewCommand$3;->val$completionAction:Lcom/metamoji/ns/INsShareViewCommandCompletionAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public action(Z)V
    .locals 1

    if-eqz p1, :cond_0

    return-void

    .line 268
    :cond_0
    new-instance p1, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomTitleDate;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomTitleDate;-><init>(Lcom/metamoji/ns/INsCollaboAction;)V

    .line 269
    iget-object v0, p0, Lcom/metamoji/ns/NsShareViewCommand$3;->val$roomId:Ljava/lang/String;

    iput-object v0, p1, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomTitleDate;->roomId:Ljava/lang/String;

    .line 270
    iget-object v0, p0, Lcom/metamoji/ns/NsShareViewCommand$3;->val$completionAction:Lcom/metamoji/ns/INsShareViewCommandCompletionAction;

    iput-object v0, p1, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomTitleDate;->completionAction:Lcom/metamoji/ns/INsShareViewCommandCompletionAction;

    .line 271
    invoke-virtual {p1}, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomTitleDate;->doInBackground()V

    return-void
.end method
