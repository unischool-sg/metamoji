.class Lcom/metamoji/ns/task/NsCollaboBgTaskForPreCreateRoom$1;
.super Ljava/lang/Object;
.source "NsCollaboBgTaskForPreCreateRoom.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/task/NsCollaboBgTaskForPreCreateRoom;->taskExec()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ns/task/NsCollaboBgTaskForPreCreateRoom;

.field final synthetic val$companyId:Ljava/lang/String;

.field final synthetic val$email:Ljava/lang/String;

.field final synthetic val$loginName:Ljava/lang/String;

.field final synthetic val$nickName:Ljava/lang/String;

.field final synthetic val$password:Ljava/lang/String;

.field final synthetic val$qwd:Ljava/lang/String;

.field final synthetic val$userId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/task/NsCollaboBgTaskForPreCreateRoom;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
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

    .line 71
    iput-object p1, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForPreCreateRoom$1;->this$0:Lcom/metamoji/ns/task/NsCollaboBgTaskForPreCreateRoom;

    iput-object p2, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForPreCreateRoom$1;->val$companyId:Ljava/lang/String;

    iput-object p3, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForPreCreateRoom$1;->val$email:Ljava/lang/String;

    iput-object p4, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForPreCreateRoom$1;->val$password:Ljava/lang/String;

    iput-object p5, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForPreCreateRoom$1;->val$qwd:Ljava/lang/String;

    iput-object p6, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForPreCreateRoom$1;->val$userId:Ljava/lang/String;

    iput-object p7, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForPreCreateRoom$1;->val$nickName:Ljava/lang/String;

    iput-object p8, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForPreCreateRoom$1;->val$loginName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .line 76
    iget-object v0, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForPreCreateRoom$1;->val$companyId:Ljava/lang/String;

    iget-object v1, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForPreCreateRoom$1;->val$email:Ljava/lang/String;

    iget-object v2, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForPreCreateRoom$1;->val$password:Ljava/lang/String;

    iget-object v3, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForPreCreateRoom$1;->val$qwd:Ljava/lang/String;

    iget-object v4, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForPreCreateRoom$1;->val$userId:Ljava/lang/String;

    iget-object v5, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForPreCreateRoom$1;->val$nickName:Ljava/lang/String;

    iget-object v6, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForPreCreateRoom$1;->val$loginName:Ljava/lang/String;

    iget-object v7, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForPreCreateRoom$1;->this$0:Lcom/metamoji/ns/task/NsCollaboBgTaskForPreCreateRoom;

    iget-boolean v7, v7, Lcom/metamoji/ns/task/NsCollaboBgTaskForPreCreateRoom;->deleteCurrentDoc:Z

    iget-object v8, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForPreCreateRoom$1;->this$0:Lcom/metamoji/ns/task/NsCollaboBgTaskForPreCreateRoom;

    iget-object v8, v8, Lcom/metamoji/ns/task/NsCollaboBgTaskForPreCreateRoom;->shareTemplateDic:Ljava/util/Map;

    iget-object v9, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForPreCreateRoom$1;->this$0:Lcom/metamoji/ns/task/NsCollaboBgTaskForPreCreateRoom;

    iget-boolean v9, v9, Lcom/metamoji/ns/task/NsCollaboBgTaskForPreCreateRoom;->submitByStudent:Z

    iget-object v10, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForPreCreateRoom$1;->this$0:Lcom/metamoji/ns/task/NsCollaboBgTaskForPreCreateRoom;

    iget-boolean v10, v10, Lcom/metamoji/ns/task/NsCollaboBgTaskForPreCreateRoom;->isDragDrop:Z

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v0 .. v12}, Lcom/metamoji/ns/NsCollaboCommand;->createRoomSubForSchool(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;ZZLjava/lang/String;Ljava/util/List;)V

    return-void
.end method
