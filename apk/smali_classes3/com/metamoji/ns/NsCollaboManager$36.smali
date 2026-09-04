.class Lcom/metamoji/ns/NsCollaboManager$36;
.super Ljava/lang/Object;
.source "NsCollaboManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/NsCollaboManager;->updateUserInfo(Ljava/util/Map;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ns/NsCollaboManager;

.field final synthetic val$editorViewController:Lcom/metamoji/nt/NtEditorWindowController;

.field final synthetic val$index:I

.field final synthetic val$isAppend:Z

.field final synthetic val$mySelf:Z

.field final synthetic val$nickName:Ljava/lang/String;

.field final synthetic val$preIndex:I

.field final synthetic val$presenterChangeEnable:Z

.field final synthetic val$presenterChangeMsgKey:I

.field final synthetic val$presenterChangeMsgKeyForInfo:I

.field final synthetic val$presenterChanged:Z

.field final synthetic val$propChange:Z

.field final synthetic val$propDic:Ljava/util/Map;

.field final synthetic val$userId:Ljava/lang/String;

.field final synthetic val$userInfo:Lcom/metamoji/ns/NsCollaboUserInfo;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/NsCollaboManager;ZLcom/metamoji/ns/NsCollaboUserInfo;IZLjava/lang/String;Ljava/lang/String;ZLjava/util/Map;ILcom/metamoji/nt/NtEditorWindowController;ZIZI)V
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
            0x1010,
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

    .line 3284
    iput-object p1, p0, Lcom/metamoji/ns/NsCollaboManager$36;->this$0:Lcom/metamoji/ns/NsCollaboManager;

    iput-boolean p2, p0, Lcom/metamoji/ns/NsCollaboManager$36;->val$isAppend:Z

    iput-object p3, p0, Lcom/metamoji/ns/NsCollaboManager$36;->val$userInfo:Lcom/metamoji/ns/NsCollaboUserInfo;

    iput p4, p0, Lcom/metamoji/ns/NsCollaboManager$36;->val$index:I

    iput-boolean p5, p0, Lcom/metamoji/ns/NsCollaboManager$36;->val$mySelf:Z

    iput-object p6, p0, Lcom/metamoji/ns/NsCollaboManager$36;->val$nickName:Ljava/lang/String;

    iput-object p7, p0, Lcom/metamoji/ns/NsCollaboManager$36;->val$userId:Ljava/lang/String;

    iput-boolean p8, p0, Lcom/metamoji/ns/NsCollaboManager$36;->val$propChange:Z

    iput-object p9, p0, Lcom/metamoji/ns/NsCollaboManager$36;->val$propDic:Ljava/util/Map;

    iput p10, p0, Lcom/metamoji/ns/NsCollaboManager$36;->val$preIndex:I

    iput-object p11, p0, Lcom/metamoji/ns/NsCollaboManager$36;->val$editorViewController:Lcom/metamoji/nt/NtEditorWindowController;

    iput-boolean p12, p0, Lcom/metamoji/ns/NsCollaboManager$36;->val$presenterChanged:Z

    iput p13, p0, Lcom/metamoji/ns/NsCollaboManager$36;->val$presenterChangeMsgKeyForInfo:I

    iput-boolean p14, p0, Lcom/metamoji/ns/NsCollaboManager$36;->val$presenterChangeEnable:Z

    iput p15, p0, Lcom/metamoji/ns/NsCollaboManager$36;->val$presenterChangeMsgKey:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 3287
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboManager$36;->this$0:Lcom/metamoji/ns/NsCollaboManager;

    invoke-static {v0}, Lcom/metamoji/ns/NsCollaboManager;->-$$Nest$mgetCollaboModeBar(Lcom/metamoji/ns/NsCollaboManager;)Lcom/metamoji/ns/ui/NsCollaboModeViewBase;

    move-result-object v0

    .line 3288
    iget-boolean v1, p0, Lcom/metamoji/ns/NsCollaboManager$36;->val$isAppend:Z

    const-string v2, "%s"

    const-string v3, "%@"

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    .line 3293
    iget-object v1, p0, Lcom/metamoji/ns/NsCollaboManager$36;->val$userInfo:Lcom/metamoji/ns/NsCollaboUserInfo;

    iget v4, p0, Lcom/metamoji/ns/NsCollaboManager$36;->val$index:I

    invoke-virtual {v0, v1, v4}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->appendUserInfo(Lcom/metamoji/ns/NsCollaboUserInfo;I)V

    .line 3296
    invoke-static {}, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->sharedInstance()Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;

    move-result-object v1

    iget-object v4, p0, Lcom/metamoji/ns/NsCollaboManager$36;->val$userInfo:Lcom/metamoji/ns/NsCollaboUserInfo;

    invoke-virtual {v1, v4}, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->appendUser(Lcom/metamoji/ns/NsCollaboUserInfo;)V

    .line 3300
    iget-boolean v1, p0, Lcom/metamoji/ns/NsCollaboManager$36;->val$mySelf:Z

    if-nez v1, :cond_0

    .line 3301
    sget v1, Lcom/metamoji/noteanytime/R$string;->Msg_LoginUser_With_Name:I

    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v1

    .line 3303
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 3304
    iget-object v2, p0, Lcom/metamoji/ns/NsCollaboManager$36;->val$nickName:Ljava/lang/String;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 3305
    iget-object v2, p0, Lcom/metamoji/ns/NsCollaboManager$36;->val$userInfo:Lcom/metamoji/ns/NsCollaboUserInfo;

    iget-object v2, v2, Lcom/metamoji/ns/NsCollaboUserInfo;->timestamp:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->appendRoomUpdateMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 3309
    :cond_0
    iget-object v1, p0, Lcom/metamoji/ns/NsCollaboManager$36;->this$0:Lcom/metamoji/ns/NsCollaboManager;

    invoke-static {v1}, Lcom/metamoji/ns/NsCollaboManager;->-$$Nest$mgetCollaboSettings(Lcom/metamoji/ns/NsCollaboManager;)Lcom/metamoji/ns/NsCollaboSettings;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 3311
    iget-object v2, p0, Lcom/metamoji/ns/NsCollaboManager$36;->val$nickName:Ljava/lang/String;

    iget-object v3, p0, Lcom/metamoji/ns/NsCollaboManager$36;->val$userId:Ljava/lang/String;

    iget-object v4, p0, Lcom/metamoji/ns/NsCollaboManager$36;->this$0:Lcom/metamoji/ns/NsCollaboManager;

    iget-object v4, v4, Lcom/metamoji/ns/NsCollaboManager;->m_roomId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/metamoji/ns/NsCollaboSettings;->addNickName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3313
    iget-object v2, p0, Lcom/metamoji/ns/NsCollaboManager$36;->val$userInfo:Lcom/metamoji/ns/NsCollaboUserInfo;

    iget v2, v2, Lcom/metamoji/ns/NsCollaboUserInfo;->userMode:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_8

    .line 3314
    iget-object v2, p0, Lcom/metamoji/ns/NsCollaboManager$36;->val$nickName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/metamoji/ns/NsCollaboSettings;->setOwnerNickName(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_1
    if-eqz v0, :cond_8

    .line 3324
    iget-boolean v1, p0, Lcom/metamoji/ns/NsCollaboManager$36;->val$propChange:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/metamoji/ns/NsCollaboManager$36;->val$propDic:Ljava/util/Map;

    const-string v4, "editTextUnit"

    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/metamoji/ns/NsCollaboManager$36;->val$propDic:Ljava/util/Map;

    const-string v4, "recordingSoundUnit"

    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 3325
    :cond_2
    iget-object v1, p0, Lcom/metamoji/ns/NsCollaboManager$36;->val$userInfo:Lcom/metamoji/ns/NsCollaboUserInfo;

    iget v4, p0, Lcom/metamoji/ns/NsCollaboManager$36;->val$index:I

    iget v5, p0, Lcom/metamoji/ns/NsCollaboManager$36;->val$preIndex:I

    invoke-virtual {v0, v1, v4, v5}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->updateUserInfo(Lcom/metamoji/ns/NsCollaboUserInfo;II)V

    .line 3328
    :cond_3
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v1

    .line 3329
    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->isPersonalMode()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3330
    iget-object v4, p0, Lcom/metamoji/ns/NsCollaboManager$36;->val$userInfo:Lcom/metamoji/ns/NsCollaboUserInfo;

    iget-object v4, v4, Lcom/metamoji/ns/NsCollaboUserInfo;->schoolPersonalStatus:Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 3332
    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->personalIdForPersonalModeInfoView()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 3333
    iget-object v5, p0, Lcom/metamoji/ns/NsCollaboManager$36;->val$userInfo:Lcom/metamoji/ns/NsCollaboUserInfo;

    iget-object v5, v5, Lcom/metamoji/ns/NsCollaboUserInfo;->dcUserId:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3334
    iget-object v1, p0, Lcom/metamoji/ns/NsCollaboManager$36;->val$editorViewController:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-virtual {v1}, Lcom/metamoji/nt/NtEditorWindowController;->getEditorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v1

    .line 3335
    invoke-interface {v1}, Lcom/metamoji/nt/INtEditor;->getPersonalModeInfoView()Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->setStudentStatus(Ljava/lang/String;)V

    .line 3339
    :cond_4
    iget-boolean v1, p0, Lcom/metamoji/ns/NsCollaboManager$36;->val$presenterChanged:Z

    if-eqz v1, :cond_8

    .line 3345
    iget v1, p0, Lcom/metamoji/ns/NsCollaboManager$36;->val$presenterChangeMsgKeyForInfo:I

    if-eqz v1, :cond_5

    .line 3346
    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v1

    .line 3348
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 3349
    iget-object v4, p0, Lcom/metamoji/ns/NsCollaboManager$36;->val$nickName:Ljava/lang/String;

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 3350
    iget-object v4, p0, Lcom/metamoji/ns/NsCollaboManager$36;->val$userInfo:Lcom/metamoji/ns/NsCollaboUserInfo;

    iget-object v4, v4, Lcom/metamoji/ns/NsCollaboUserInfo;->timestamp:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->appendRoomUpdateMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 3362
    :cond_5
    iget-boolean v1, p0, Lcom/metamoji/ns/NsCollaboManager$36;->val$mySelf:Z

    if-nez v1, :cond_8

    .line 3363
    iget-boolean v1, p0, Lcom/metamoji/ns/NsCollaboManager$36;->val$presenterChangeEnable:Z

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/metamoji/ns/NsCollaboManager$36;->this$0:Lcom/metamoji/ns/NsCollaboManager;

    invoke-virtual {v1}, Lcom/metamoji/ns/NsCollaboManager;->isPresenter()Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_1

    .line 3367
    :cond_6
    iget v1, p0, Lcom/metamoji/ns/NsCollaboManager$36;->val$presenterChangeMsgKey:I

    if-eqz v1, :cond_7

    .line 3368
    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_7
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_8

    .line 3374
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 3375
    iget-object v2, p0, Lcom/metamoji/ns/NsCollaboManager$36;->val$nickName:Ljava/lang/String;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 3376
    invoke-static {v1}, Lcom/metamoji/ns/ui/NsCollaboProgressView;->toast(Ljava/lang/String;)V

    .line 3392
    :cond_8
    :goto_1
    iget-object v1, p0, Lcom/metamoji/ns/NsCollaboManager$36;->this$0:Lcom/metamoji/ns/NsCollaboManager;

    iget-object v2, p0, Lcom/metamoji/ns/NsCollaboManager$36;->val$userInfo:Lcom/metamoji/ns/NsCollaboUserInfo;

    invoke-virtual {v1, v2}, Lcom/metamoji/ns/NsCollaboManager;->updatePersonalModeInfoView(Lcom/metamoji/ns/NsCollaboUserInfo;)V

    if-eqz v0, :cond_9

    .line 3396
    iget-boolean v1, p0, Lcom/metamoji/ns/NsCollaboManager$36;->val$mySelf:Z

    if-eqz v1, :cond_9

    .line 3397
    invoke-virtual {v0}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->updateModeArea()V

    :cond_9
    return-void
.end method
