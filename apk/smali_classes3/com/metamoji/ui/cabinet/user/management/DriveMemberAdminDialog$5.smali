.class Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$5;
.super Ljava/lang/Object;
.source "DriveMemberAdminDialog.java"

# interfaces
.implements Lcom/metamoji/nt/cabinet/user/management/ICabinetUserSelectDialogAfterAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;->handleAddMemberButtonTap()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 535
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$5;->this$0:Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public action(Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 538
    iget-object p2, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$5;->this$0:Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;

    invoke-static {p2, p1}, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;->-$$Nest$minviteToDriveWithUserIdList(Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;Ljava/util/List;)V

    return-void
.end method
