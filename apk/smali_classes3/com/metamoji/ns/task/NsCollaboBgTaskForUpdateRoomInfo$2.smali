.class Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomInfo$2;
.super Ljava/lang/Object;
.source "NsCollaboBgTaskForUpdateRoomInfo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomInfo;->taskExec()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomInfo;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 237
    iput-object p1, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomInfo$2;->this$0:Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomInfo$2;->this$0:Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomInfo;

    invoke-static {v0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomInfo;->-$$Nest$fgetdialogTag(Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/ui/dialog/NtDialog;->closeDialog(Ljava/lang/String;)V

    return-void
.end method
