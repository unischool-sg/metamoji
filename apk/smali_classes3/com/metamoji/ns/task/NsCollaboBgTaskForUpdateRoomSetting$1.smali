.class Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomSetting$1;
.super Ljava/lang/Object;
.source "NsCollaboBgTaskForUpdateRoomSetting.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomSetting;->taskExec()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomSetting;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomSetting;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 140
    iput-object p1, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomSetting$1;->this$0:Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomSetting$1;->this$0:Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomSetting;

    invoke-static {v0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomSetting;->-$$Nest$fgetdialogTag(Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomSetting;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/ui/dialog/NtDialog;->closeDialog(Ljava/lang/String;)V

    return-void
.end method
