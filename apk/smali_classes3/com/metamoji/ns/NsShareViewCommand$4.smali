.class Lcom/metamoji/ns/NsShareViewCommand$4;
.super Ljava/lang/Object;
.source "NsShareViewCommand.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/NsShareViewCommand;->changeRoomMode(Ljava/lang/String;Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomMode$RoomMode;IILcom/metamoji/ns/INsShareViewCommandCompletionAction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$completionAction:Lcom/metamoji/ns/INsShareViewCommandCompletionAction;

.field final synthetic val$roomId:Ljava/lang/String;

.field final synthetic val$roomMode:Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomMode$RoomMode;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/INsShareViewCommandCompletionAction;Ljava/lang/String;Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomMode$RoomMode;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 366
    iput-object p1, p0, Lcom/metamoji/ns/NsShareViewCommand$4;->val$completionAction:Lcom/metamoji/ns/INsShareViewCommandCompletionAction;

    iput-object p2, p0, Lcom/metamoji/ns/NsShareViewCommand$4;->val$roomId:Ljava/lang/String;

    iput-object p3, p0, Lcom/metamoji/ns/NsShareViewCommand$4;->val$roomMode:Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomMode$RoomMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 370
    new-instance p1, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomMode;

    new-instance p2, Lcom/metamoji/ns/NsShareViewCommand$4$1;

    invoke-direct {p2, p0}, Lcom/metamoji/ns/NsShareViewCommand$4$1;-><init>(Lcom/metamoji/ns/NsShareViewCommand$4;)V

    invoke-direct {p1, p2}, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomMode;-><init>(Lcom/metamoji/ns/INsCollaboAction;)V

    .line 379
    iget-object p2, p0, Lcom/metamoji/ns/NsShareViewCommand$4;->val$roomId:Ljava/lang/String;

    iput-object p2, p1, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomMode;->roomId:Ljava/lang/String;

    .line 380
    iget-object p2, p0, Lcom/metamoji/ns/NsShareViewCommand$4;->val$roomMode:Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomMode$RoomMode;

    iput-object p2, p1, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomMode;->roomMode:Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomMode$RoomMode;

    .line 381
    invoke-virtual {p1}, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomMode;->doInBackground()V

    return-void
.end method
