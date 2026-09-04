.class Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$4$1;
.super Ljava/lang/Object;
.source "DriveMemberAdminDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$4;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$4;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$4;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 466
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$4$1;->this$1:Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 469
    new-instance v0, Lcom/metamoji/cs/dc/params/CsExcludeMemberFromDriveParam;

    invoke-direct {v0}, Lcom/metamoji/cs/dc/params/CsExcludeMemberFromDriveParam;-><init>()V

    .line 470
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$4$1;->this$1:Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$4;

    iget-object v1, v1, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$4;->this$0:Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;

    iget-object v1, v1, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;->m_driveId:Ljava/lang/String;

    iput-object v1, v0, Lcom/metamoji/cs/dc/params/CsExcludeMemberFromDriveParam;->driveId:Ljava/lang/String;

    .line 471
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$4$1;->this$1:Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$4;

    iget-object v1, v1, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$4;->this$0:Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;

    iget-object v1, v1, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;->m_deleteItemArray:Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/metamoji/cs/dc/params/CsExcludeMemberFromDriveParam;->userList:Ljava/util/List;

    .line 474
    invoke-static {v0}, Lcom/metamoji/cs/dc/CsCloudService;->executeWithAutoLoginFor(Lcom/metamoji/cs/dc/params/CsParamBaseAbstract;)Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    move-result-object v0

    check-cast v0, Lcom/metamoji/cs/dc/response/CsExcludeMemberFromDriveResponse;

    .line 476
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v1

    new-instance v2, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$4$1$1;

    invoke-direct {v2, p0, v0}, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$4$1$1;-><init>(Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$4$1;Lcom/metamoji/cs/dc/response/CsExcludeMemberFromDriveResponse;)V

    invoke-virtual {v1, v2}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method
