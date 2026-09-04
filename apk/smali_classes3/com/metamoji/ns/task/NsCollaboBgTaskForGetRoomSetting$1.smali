.class Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomSetting$1;
.super Ljava/lang/Object;
.source "NsCollaboBgTaskForGetRoomSetting.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomSetting;->taskExec()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomSetting;

.field final synthetic val$date:Ljava/util/Date;

.field final synthetic val$finalCompanyId:Ljava/lang/String;

.field final synthetic val$finalEmail:Ljava/lang/String;

.field final synthetic val$finalPassword:Ljava/lang/String;

.field final synthetic val$finalPreMode2ParamDic:Ljava/util/Map;

.field final synthetic val$finalPreRoomSettingList:Ljava/util/List;

.field final synthetic val$finalQwd:Ljava/lang/String;

.field final synthetic val$presenterArray:Ljava/util/List;

.field final synthetic val$roomInfoJsonDic:Ljava/util/Map;

.field final synthetic val$roomType:Ljava/lang/String;

.field final synthetic val$speakerArray:Ljava/util/List;

.field final synthetic val$title:Ljava/lang/String;

.field final synthetic val$validFlag:I

.field final synthetic val$visitorArray:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomSetting;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/util/Date;ILjava/util/Map;Ljava/util/Map;)V
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

    .line 281
    iput-object p1, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomSetting$1;->this$0:Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomSetting;

    iput-object p2, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomSetting$1;->val$finalPreRoomSettingList:Ljava/util/List;

    iput-object p3, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomSetting$1;->val$finalEmail:Ljava/lang/String;

    iput-object p4, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomSetting$1;->val$finalPassword:Ljava/lang/String;

    iput-object p5, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomSetting$1;->val$finalQwd:Ljava/lang/String;

    iput-object p6, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomSetting$1;->val$finalCompanyId:Ljava/lang/String;

    iput-object p7, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomSetting$1;->val$roomType:Ljava/lang/String;

    iput-object p8, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomSetting$1;->val$presenterArray:Ljava/util/List;

    iput-object p9, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomSetting$1;->val$speakerArray:Ljava/util/List;

    iput-object p10, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomSetting$1;->val$visitorArray:Ljava/util/List;

    iput-object p11, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomSetting$1;->val$title:Ljava/lang/String;

    iput-object p12, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomSetting$1;->val$date:Ljava/util/Date;

    iput p13, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomSetting$1;->val$validFlag:I

    iput-object p14, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomSetting$1;->val$finalPreMode2ParamDic:Ljava/util/Map;

    iput-object p15, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomSetting$1;->val$roomInfoJsonDic:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 284
    new-instance v0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;

    invoke-direct {v0}, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;-><init>()V

    const/4 v1, 0x1

    .line 285
    iput-boolean v1, v0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_changeMode:Z

    .line 286
    iget-object v2, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomSetting$1;->val$finalPreRoomSettingList:Ljava/util/List;

    iput-object v2, v0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_roomSettingList:Ljava/util/List;

    .line 287
    iget-object v2, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomSetting$1;->this$0:Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomSetting;

    iget-object v2, v2, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomSetting;->roomId:Ljava/lang/String;

    iput-object v2, v0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_roomId:Ljava/lang/String;

    .line 290
    iget-object v2, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomSetting$1;->val$finalEmail:Ljava/lang/String;

    iput-object v2, v0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_email:Ljava/lang/String;

    .line 291
    iget-object v2, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomSetting$1;->val$finalPassword:Ljava/lang/String;

    iput-object v2, v0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_password:Ljava/lang/String;

    .line 292
    iget-object v2, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomSetting$1;->val$finalQwd:Ljava/lang/String;

    iput-object v2, v0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_qwd:Ljava/lang/String;

    .line 293
    iget-object v2, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomSetting$1;->val$finalCompanyId:Ljava/lang/String;

    iput-object v2, v0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_companyId:Ljava/lang/String;

    .line 294
    iget-object v2, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomSetting$1;->val$roomType:Ljava/lang/String;

    iput-object v2, v0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_roomType:Ljava/lang/String;

    .line 295
    iget-object v2, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomSetting$1;->val$presenterArray:Ljava/util/List;

    iput-object v2, v0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_presenterArray:Ljava/util/List;

    .line 296
    iget-object v2, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomSetting$1;->val$speakerArray:Ljava/util/List;

    iput-object v2, v0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_speakerArray:Ljava/util/List;

    .line 297
    iget-object v2, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomSetting$1;->val$visitorArray:Ljava/util/List;

    iput-object v2, v0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_visitorArray:Ljava/util/List;

    .line 298
    iget-object v2, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomSetting$1;->val$title:Ljava/lang/String;

    iput-object v2, v0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_title:Ljava/lang/String;

    .line 299
    iget-object v2, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomSetting$1;->val$date:Ljava/util/Date;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    iput-boolean v2, v0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_hasDate:Z

    .line 300
    iget-object v2, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomSetting$1;->val$date:Ljava/util/Date;

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {v2}, Lcom/metamoji/ns/NsShareViewCommand;->roundMinutesDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v2

    :goto_1
    iput-object v2, v0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_date:Ljava/util/Date;

    .line 303
    iget v2, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomSetting$1;->val$validFlag:I

    const v4, 0x800c

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_2

    move v3, v1

    :cond_2
    iput-boolean v3, v0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_scoreEnable:Z

    .line 304
    iget-object v2, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomSetting$1;->val$finalPreMode2ParamDic:Ljava/util/Map;

    iput-object v2, v0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_preMode2ParamDic:Ljava/util/Map;

    .line 307
    iget-object v2, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomSetting$1;->val$roomInfoJsonDic:Ljava/util/Map;

    const-string/jumbo v3, "secureRoom"

    invoke-static {v2, v3}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 308
    iput-boolean v2, v0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_secureRoom:Z

    .line 309
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 311
    invoke-virtual {v3}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 314
    const-string v4, "MMJNsShareSettings"

    invoke-virtual {v3, v4}, Lcom/metamoji/nt/NtDocument;->getDocumentSettingsForType(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object v4

    check-cast v4, Lcom/metamoji/ns/NsCollaboSettings;

    if-eqz v4, :cond_3

    .line 315
    invoke-virtual {v4}, Lcom/metamoji/ns/NsCollaboSettings;->getSecureRoom()Z

    move-result v5

    if-eq v5, v2, :cond_3

    .line 316
    invoke-virtual {v4, v2}, Lcom/metamoji/ns/NsCollaboSettings;->setSecureRoom(Z)V

    .line 318
    invoke-virtual {v3, v1}, Lcom/metamoji/nt/NtDocument;->setSaveOnEnd(Z)V

    .line 327
    :cond_3
    const-string v1, "NsCollaboCommandUseSettingDialog"

    invoke-virtual {v0, v1}, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->safeShow(Ljava/lang/String;)V

    return-void
.end method
