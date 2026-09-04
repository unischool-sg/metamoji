.class Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomInfo$1;
.super Ljava/lang/Object;
.source "NsCollaboBgTaskForGetRoomInfo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomInfo;->taskExec()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomInfo;

.field final synthetic val$finalCompanyId:Ljava/lang/String;

.field final synthetic val$finalDriveId:Ljava/lang/String;

.field final synthetic val$finalGroupList:Ljava/util/List;

.field final synthetic val$finalOwnerNickName:Ljava/lang/String;

.field final synthetic val$finalOwnerUserId:Ljava/lang/String;

.field final synthetic val$finalPresenterArray:Ljava/util/List;

.field final synthetic val$finalSpeakerArray:Ljava/util/List;

.field final synthetic val$finalUserId:Ljava/lang/String;

.field final synthetic val$finalVisitorArray:Ljava/util/List;

.field final synthetic val$jsonDic:Ljava/util/Map;

.field final synthetic val$roomType:Ljava/lang/String;

.field final synthetic val$userClassNumberAndLoginNameMap:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
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
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 216
    iput-object p1, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomInfo$1;->this$0:Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomInfo;

    iput-object p2, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomInfo$1;->val$roomType:Ljava/lang/String;

    iput-object p3, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomInfo$1;->val$finalOwnerUserId:Ljava/lang/String;

    iput-object p4, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomInfo$1;->val$finalOwnerNickName:Ljava/lang/String;

    iput-object p5, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomInfo$1;->val$finalCompanyId:Ljava/lang/String;

    iput-object p6, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomInfo$1;->val$finalPresenterArray:Ljava/util/List;

    iput-object p7, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomInfo$1;->val$finalSpeakerArray:Ljava/util/List;

    iput-object p8, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomInfo$1;->val$finalVisitorArray:Ljava/util/List;

    iput-object p9, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomInfo$1;->val$finalUserId:Ljava/lang/String;

    iput-object p10, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomInfo$1;->val$finalGroupList:Ljava/util/List;

    iput-object p11, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomInfo$1;->val$finalDriveId:Ljava/lang/String;

    iput-object p12, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomInfo$1;->val$userClassNumberAndLoginNameMap:Ljava/util/Map;

    iput-object p13, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomInfo$1;->val$jsonDic:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 219
    new-instance v0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;

    invoke-direct {v0}, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;-><init>()V

    .line 220
    iget-object v1, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomInfo$1;->this$0:Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomInfo;

    iget-object v1, v1, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomInfo;->roomId:Ljava/lang/String;

    iput-object v1, v0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_roomId:Ljava/lang/String;

    .line 221
    iget-object v1, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomInfo$1;->this$0:Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomInfo;

    iget-object v1, v1, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomInfo;->m_email:Ljava/lang/String;

    iput-object v1, v0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_email:Ljava/lang/String;

    .line 222
    iget-object v1, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomInfo$1;->this$0:Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomInfo;

    iget-object v1, v1, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomInfo;->m_password:Ljava/lang/String;

    iput-object v1, v0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_password:Ljava/lang/String;

    .line 223
    iget-object v1, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomInfo$1;->this$0:Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomInfo;

    iget-object v1, v1, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomInfo;->m_qwd:Ljava/lang/String;

    iput-object v1, v0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_qwd:Ljava/lang/String;

    const/4 v1, 0x0

    .line 224
    iput-object v1, v0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_createCollaboDlg:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;

    .line 225
    iget-object v2, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomInfo$1;->val$roomType:Ljava/lang/String;

    iput-object v2, v0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_roomType:Ljava/lang/String;

    .line 226
    iget-object v2, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomInfo$1;->val$finalOwnerUserId:Ljava/lang/String;

    iput-object v2, v0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_ownerUserId:Ljava/lang/String;

    .line 227
    iget-object v2, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomInfo$1;->val$finalOwnerNickName:Ljava/lang/String;

    iput-object v2, v0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_ownerNickName:Ljava/lang/String;

    .line 228
    iput-object v1, v0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_ownerLoginName:Ljava/lang/String;

    .line 231
    iget-object v1, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomInfo$1;->val$finalCompanyId:Ljava/lang/String;

    iput-object v1, v0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_companyId:Ljava/lang/String;

    .line 233
    iget-object v1, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomInfo$1;->val$finalPresenterArray:Ljava/util/List;

    iput-object v1, v0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_presenterArray:Ljava/util/List;

    .line 234
    iget-object v1, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomInfo$1;->val$finalSpeakerArray:Ljava/util/List;

    iput-object v1, v0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_speakerArray:Ljava/util/List;

    .line 235
    iget-object v1, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomInfo$1;->val$finalVisitorArray:Ljava/util/List;

    iput-object v1, v0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_visitorArray:Ljava/util/List;

    .line 236
    iget-object v1, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomInfo$1;->this$0:Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomInfo;

    iget-object v1, v1, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomInfo;->m_email:Ljava/lang/String;

    iput-object v1, v0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_myAddress:Ljava/lang/String;

    .line 237
    iget-object v1, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomInfo$1;->val$finalUserId:Ljava/lang/String;

    iput-object v1, v0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_myUserId:Ljava/lang/String;

    .line 240
    iget-object v1, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomInfo$1;->val$finalGroupList:Ljava/util/List;

    iput-object v1, v0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_groupList:Ljava/util/List;

    .line 242
    iget-object v1, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomInfo$1;->val$finalDriveId:Ljava/lang/String;

    iput-object v1, v0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_driveId:Ljava/lang/String;

    .line 243
    iget-object v1, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomInfo$1;->val$userClassNumberAndLoginNameMap:Ljava/util/Map;

    iput-object v1, v0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_userClassNumberAndLoginNameMap:Ljava/util/Map;

    .line 248
    iget-object v1, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomInfo$1;->val$jsonDic:Ljava/util/Map;

    const-string/jumbo v2, "secureRoom"

    invoke-static {v1, v2}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 250
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 252
    invoke-virtual {v2}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 255
    const-string v3, "MMJNsShareSettings"

    invoke-virtual {v2, v3}, Lcom/metamoji/nt/NtDocument;->getDocumentSettingsForType(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object v3

    check-cast v3, Lcom/metamoji/ns/NsCollaboSettings;

    if-eqz v3, :cond_0

    .line 256
    invoke-virtual {v3}, Lcom/metamoji/ns/NsCollaboSettings;->getSecureRoom()Z

    move-result v4

    if-eq v4, v1, :cond_0

    .line 257
    invoke-virtual {v3, v1}, Lcom/metamoji/ns/NsCollaboSettings;->setSecureRoom(Z)V

    const/4 v1, 0x1

    .line 259
    invoke-virtual {v2, v1}, Lcom/metamoji/nt/NtDocument;->setSaveOnEnd(Z)V

    .line 268
    :cond_0
    const-string v1, "NsCollaboMemberSettingsDialog"

    invoke-virtual {v0, v1}, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->safeShow(Ljava/lang/String;)V

    return-void
.end method
