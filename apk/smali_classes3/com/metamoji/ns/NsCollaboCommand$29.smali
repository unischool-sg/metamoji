.class Lcom/metamoji/ns/NsCollaboCommand$29;
.super Ljava/lang/Object;
.source "NsCollaboCommand.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/NsCollaboCommand;->changeRoomMode(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$isReadOnly:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2511
    iput-boolean p1, p0, Lcom/metamoji/ns/NsCollaboCommand$29;->val$isReadOnly:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 2515
    invoke-static {}, Lcom/metamoji/un/text/UnTextUnitStateManager;->sharedInstance()Lcom/metamoji/un/text/UnTextUnitStateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/un/text/UnTextUnitStateManager;->requestKillTextUnitFocus()V

    .line 2518
    new-instance p1, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomMode;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomMode;-><init>(Lcom/metamoji/ns/INsCollaboAction;)V

    .line 2519
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/ns/NsCollaboManager;->roomId()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomMode;->roomId:Ljava/lang/String;

    .line 2520
    iget-boolean p2, p0, Lcom/metamoji/ns/NsCollaboCommand$29;->val$isReadOnly:Z

    if-eqz p2, :cond_0

    sget-object p2, Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomMode$RoomMode;->READONLY:Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomMode$RoomMode;

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomMode$RoomMode;->FREE:Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomMode$RoomMode;

    :goto_0
    iput-object p2, p1, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomMode;->roomMode:Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomMode$RoomMode;

    .line 2521
    invoke-virtual {p1}, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomMode;->doInBackground()V

    return-void
.end method
