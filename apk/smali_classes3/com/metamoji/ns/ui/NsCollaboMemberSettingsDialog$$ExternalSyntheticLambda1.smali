.class public final synthetic Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;


# instance fields
.field public final synthetic f$0:Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;

.field public final synthetic f$1:Lcom/metamoji/forSchool/ui/ScGroupingDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;Lcom/metamoji/forSchool/ui/ScGroupingDialog;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$$ExternalSyntheticLambda1;->f$0:Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;

    iput-object p2, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$$ExternalSyntheticLambda1;->f$1:Lcom/metamoji/forSchool/ui/ScGroupingDialog;

    return-void
.end method


# virtual methods
.method public final onDialogClosed(Ljava/lang/String;Landroid/os/Bundle;Z)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$$ExternalSyntheticLambda1;->f$0:Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;

    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$$ExternalSyntheticLambda1;->f$1:Lcom/metamoji/forSchool/ui/ScGroupingDialog;

    invoke-static {v0, v1, p1, p2, p3}, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->$r8$lambda$EmDnTMcHlWhMsBA6zA-Y91REqTc(Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;Lcom/metamoji/forSchool/ui/ScGroupingDialog;Ljava/lang/String;Landroid/os/Bundle;Z)V

    return-void
.end method
