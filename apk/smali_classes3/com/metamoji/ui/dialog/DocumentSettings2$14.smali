.class Lcom/metamoji/ui/dialog/DocumentSettings2$14;
.super Ljava/lang/Object;
.source "DocumentSettings2.java"

# interfaces
.implements Lcom/metamoji/ns/INsCollaboAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/DocumentSettings2;->handleShareTemplateSettingButtonTap()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/dialog/DocumentSettings2;

.field final synthetic val$finalDlg:Lcom/metamoji/ui/dialog/DocumentSettings2;

.field final synthetic val$finalDriveId:Ljava/lang/String;

.field final synthetic val$presenterArray:Ljava/util/List;

.field final synthetic val$roomType:Ljava/lang/String;

.field final synthetic val$speakerArray:Ljava/util/List;

.field final synthetic val$userClassNumberAndLoginNameMap:Ljava/util/Map;

.field final synthetic val$visitorArray:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/dialog/DocumentSettings2;Lcom/metamoji/ui/dialog/DocumentSettings2;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;)V
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

    .line 1034
    iput-object p1, p0, Lcom/metamoji/ui/dialog/DocumentSettings2$14;->this$0:Lcom/metamoji/ui/dialog/DocumentSettings2;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/DocumentSettings2$14;->val$finalDlg:Lcom/metamoji/ui/dialog/DocumentSettings2;

    iput-object p3, p0, Lcom/metamoji/ui/dialog/DocumentSettings2$14;->val$roomType:Ljava/lang/String;

    iput-object p4, p0, Lcom/metamoji/ui/dialog/DocumentSettings2$14;->val$presenterArray:Ljava/util/List;

    iput-object p5, p0, Lcom/metamoji/ui/dialog/DocumentSettings2$14;->val$speakerArray:Ljava/util/List;

    iput-object p6, p0, Lcom/metamoji/ui/dialog/DocumentSettings2$14;->val$visitorArray:Ljava/util/List;

    iput-object p7, p0, Lcom/metamoji/ui/dialog/DocumentSettings2$14;->val$finalDriveId:Ljava/lang/String;

    iput-object p8, p0, Lcom/metamoji/ui/dialog/DocumentSettings2$14;->val$userClassNumberAndLoginNameMap:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public action(Z)V
    .locals 2

    if-eqz p1, :cond_0

    return-void

    .line 1042
    :cond_0
    new-instance p1, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;

    invoke-direct {p1}, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;-><init>()V

    .line 1043
    iget-object v0, p0, Lcom/metamoji/ui/dialog/DocumentSettings2$14;->val$finalDlg:Lcom/metamoji/ui/dialog/DocumentSettings2;

    iput-object v0, p1, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_documentSettingsDlg:Lcom/metamoji/ui/dialog/DocumentSettings2;

    .line 1044
    iget-object v0, p0, Lcom/metamoji/ui/dialog/DocumentSettings2$14;->val$roomType:Ljava/lang/String;

    iput-object v0, p1, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_roomType:Ljava/lang/String;

    const/4 v0, 0x0

    .line 1045
    iput-object v0, p1, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_ownerUserId:Ljava/lang/String;

    .line 1046
    iput-object v0, p1, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_ownerNickName:Ljava/lang/String;

    .line 1047
    iput-object v0, p1, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_ownerLoginName:Ljava/lang/String;

    .line 1048
    iget-object v1, p0, Lcom/metamoji/ui/dialog/DocumentSettings2$14;->val$presenterArray:Ljava/util/List;

    iput-object v1, p1, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_presenterArray:Ljava/util/List;

    .line 1049
    iget-object v1, p0, Lcom/metamoji/ui/dialog/DocumentSettings2$14;->val$speakerArray:Ljava/util/List;

    iput-object v1, p1, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_speakerArray:Ljava/util/List;

    .line 1050
    iget-object v1, p0, Lcom/metamoji/ui/dialog/DocumentSettings2$14;->val$visitorArray:Ljava/util/List;

    iput-object v1, p1, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_visitorArray:Ljava/util/List;

    .line 1051
    iput-object v0, p1, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_myUserId:Ljava/lang/String;

    .line 1052
    iput-object v0, p1, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_myAddress:Ljava/lang/String;

    .line 1054
    iget-object v0, p0, Lcom/metamoji/ui/dialog/DocumentSettings2$14;->val$finalDriveId:Ljava/lang/String;

    iput-object v0, p1, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_driveId:Ljava/lang/String;

    .line 1055
    iget-object v0, p0, Lcom/metamoji/ui/dialog/DocumentSettings2$14;->val$userClassNumberAndLoginNameMap:Ljava/util/Map;

    iput-object v0, p1, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_userClassNumberAndLoginNameMap:Ljava/util/Map;

    .line 1057
    iget-object v0, p0, Lcom/metamoji/ui/dialog/DocumentSettings2$14;->this$0:Lcom/metamoji/ui/dialog/DocumentSettings2;

    invoke-virtual {v0}, Lcom/metamoji/ui/dialog/DocumentSettings2;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "NsCollaboMemberSettingsDialog"

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
