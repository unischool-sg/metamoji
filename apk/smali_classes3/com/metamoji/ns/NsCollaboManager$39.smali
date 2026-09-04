.class Lcom/metamoji/ns/NsCollaboManager$39;
.super Ljava/lang/Object;
.source "NsCollaboManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/NsCollaboManager;->roomUpdateByUserLogout(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ns/NsCollaboManager;

.field final synthetic val$index:I

.field final synthetic val$userInfo:Lcom/metamoji/ns/NsCollaboUserInfo;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/NsCollaboManager;Lcom/metamoji/ns/NsCollaboUserInfo;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
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

    .line 3796
    iput-object p1, p0, Lcom/metamoji/ns/NsCollaboManager$39;->this$0:Lcom/metamoji/ns/NsCollaboManager;

    iput-object p2, p0, Lcom/metamoji/ns/NsCollaboManager$39;->val$userInfo:Lcom/metamoji/ns/NsCollaboUserInfo;

    iput p3, p0, Lcom/metamoji/ns/NsCollaboManager$39;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 3799
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboManager$39;->this$0:Lcom/metamoji/ns/NsCollaboManager;

    invoke-static {v0}, Lcom/metamoji/ns/NsCollaboManager;->-$$Nest$mgetCollaboModeBar(Lcom/metamoji/ns/NsCollaboManager;)Lcom/metamoji/ns/ui/NsCollaboModeViewBase;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3802
    iget-object v1, p0, Lcom/metamoji/ns/NsCollaboManager$39;->val$userInfo:Lcom/metamoji/ns/NsCollaboUserInfo;

    iget v2, p0, Lcom/metamoji/ns/NsCollaboManager$39;->val$index:I

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->removeUserInfo(Lcom/metamoji/ns/NsCollaboUserInfo;I)V

    .line 3804
    invoke-static {}, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->sharedInstance()Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;

    move-result-object v1

    iget-object v2, p0, Lcom/metamoji/ns/NsCollaboManager$39;->val$userInfo:Lcom/metamoji/ns/NsCollaboUserInfo;

    invoke-virtual {v1, v2}, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->removeUser(Lcom/metamoji/ns/NsCollaboUserInfo;)V

    .line 3807
    iget-object v1, p0, Lcom/metamoji/ns/NsCollaboManager$39;->val$userInfo:Lcom/metamoji/ns/NsCollaboUserInfo;

    iget-boolean v1, v1, Lcom/metamoji/ns/NsCollaboUserInfo;->isMyself:Z

    if-nez v1, :cond_0

    .line 3808
    sget v1, Lcom/metamoji/noteanytime/R$string;->Msg_LogoutUser_With_Name:I

    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v1

    .line 3810
    const-string v2, "%@"

    const-string v3, "%s"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 3811
    iget-object v2, p0, Lcom/metamoji/ns/NsCollaboManager$39;->val$userInfo:Lcom/metamoji/ns/NsCollaboUserInfo;

    iget-object v2, v2, Lcom/metamoji/ns/NsCollaboUserInfo;->nickName:Ljava/lang/String;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 3812
    iget-object v2, p0, Lcom/metamoji/ns/NsCollaboManager$39;->val$userInfo:Lcom/metamoji/ns/NsCollaboUserInfo;

    iget-object v2, v2, Lcom/metamoji/ns/NsCollaboUserInfo;->timestamp:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->appendRoomUpdateMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 3816
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboManager$39;->this$0:Lcom/metamoji/ns/NsCollaboManager;

    iget-object v1, p0, Lcom/metamoji/ns/NsCollaboManager$39;->val$userInfo:Lcom/metamoji/ns/NsCollaboUserInfo;

    invoke-virtual {v0, v1}, Lcom/metamoji/ns/NsCollaboManager;->updatePersonalModeInfoView(Lcom/metamoji/ns/NsCollaboUserInfo;)V

    :cond_1
    return-void
.end method
