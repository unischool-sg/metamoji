.class Lcom/metamoji/forSchool/ui/ScClassListDialog$5;
.super Ljava/lang/Object;
.source "ScClassListDialog.java"

# interfaces
.implements Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$INsCollaboMemberSettingsDialogAfterActionForSchool;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/forSchool/ui/ScClassListDialog;->showMemberSettingsDialog(Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListItemData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/forSchool/ui/ScClassListDialog;

.field final synthetic val$editTargetItemData:Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListItemData;

.field final synthetic val$tag:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/metamoji/forSchool/ui/ScClassListDialog;Ljava/lang/String;Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListItemData;)V
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

    .line 771
    iput-object p1, p0, Lcom/metamoji/forSchool/ui/ScClassListDialog$5;->this$0:Lcom/metamoji/forSchool/ui/ScClassListDialog;

    iput-object p2, p0, Lcom/metamoji/forSchool/ui/ScClassListDialog$5;->val$tag:Ljava/lang/String;

    iput-object p3, p0, Lcom/metamoji/forSchool/ui/ScClassListDialog$5;->val$editTargetItemData:Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListItemData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public action(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 775
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ui/UiCurrentActivityManager;->getCurrentActivityOrNull()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 777
    :cond_0
    sget-object v1, Lcom/metamoji/lib/dialog/UtDialogHelper;->INSTANCE:Lcom/metamoji/lib/dialog/UtDialogHelper;

    iget-object v2, p0, Lcom/metamoji/forSchool/ui/ScClassListDialog$5;->val$tag:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/metamoji/lib/dialog/UtDialogHelper;->findDialog(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)Lcom/metamoji/lib/dialog/UtDialog;

    move-result-object v0

    check-cast v0, Lcom/metamoji/forSchool/ui/ScClassListDialog;

    if-eqz v0, :cond_2

    .line 779
    iget-object v1, p0, Lcom/metamoji/forSchool/ui/ScClassListDialog$5;->val$editTargetItemData:Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListItemData;

    if-nez v1, :cond_1

    .line 781
    invoke-static {v0, p1, p2}, Lcom/metamoji/forSchool/ui/ScClassListDialog;->-$$Nest$maddClassItem(Lcom/metamoji/forSchool/ui/ScClassListDialog;Ljava/lang/String;Ljava/util/List;)V

    return-void

    .line 784
    :cond_1
    invoke-static {v0, v1, p1, p2}, Lcom/metamoji/forSchool/ui/ScClassListDialog;->-$$Nest$mmodifyClassItem(Lcom/metamoji/forSchool/ui/ScClassListDialog;Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListItemData;Ljava/lang/String;Ljava/util/List;)V

    :cond_2
    :goto_0
    return-void
.end method
