.class Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomTitleDate$1;
.super Ljava/lang/Object;
.source "NsCollaboBgTaskForGetRoomTitleDate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomTitleDate;->taskExec()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomTitleDate;

.field final synthetic val$date:Ljava/util/Date;

.field final synthetic val$finalRoomId:Ljava/lang/String;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomTitleDate;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
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

    .line 141
    iput-object p1, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomTitleDate$1;->this$0:Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomTitleDate;

    iput-object p2, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomTitleDate$1;->val$finalRoomId:Ljava/lang/String;

    iput-object p3, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomTitleDate$1;->val$title:Ljava/lang/String;

    iput-object p4, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomTitleDate$1;->val$date:Ljava/util/Date;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 144
    iget-object v0, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomTitleDate$1;->val$finalRoomId:Ljava/lang/String;

    iget-object v1, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomTitleDate$1;->val$title:Ljava/lang/String;

    iget-object v2, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomTitleDate$1;->val$date:Ljava/util/Date;

    iget-object v3, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomTitleDate$1;->this$0:Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomTitleDate;

    iget-object v3, v3, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomTitleDate;->completionAction:Lcom/metamoji/ns/INsShareViewCommandCompletionAction;

    invoke-static {v0, v1, v2, v3}, Lcom/metamoji/ns/NsShareViewCommand;->handleCollaboRoomEdit(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Lcom/metamoji/ns/INsShareViewCommandCompletionAction;)V

    return-void
.end method
