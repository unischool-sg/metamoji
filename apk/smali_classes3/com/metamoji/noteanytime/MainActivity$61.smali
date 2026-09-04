.class Lcom/metamoji/noteanytime/MainActivity$61;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/noteanytime/MainActivity;->renameClassBox(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroidx/fragment/app/FragmentActivity;

.field final synthetic val$dlg:Lcom/metamoji/ui/cabinet/user/management/ClassBoxNameDialog;

.field final synthetic val$driveId:Ljava/lang/String;

.field final synthetic val$folderChangeEventListener:Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;

.field final synthetic val$oldDriveName:Ljava/lang/String;

.field final synthetic val$sdDriveMan:Lcom/metamoji/dvm/DvmDriveManager;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/cabinet/user/management/ClassBoxNameDialog;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/dvm/DvmDriveManager;Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 4285
    iput-object p1, p0, Lcom/metamoji/noteanytime/MainActivity$61;->val$dlg:Lcom/metamoji/ui/cabinet/user/management/ClassBoxNameDialog;

    iput-object p2, p0, Lcom/metamoji/noteanytime/MainActivity$61;->val$oldDriveName:Ljava/lang/String;

    iput-object p3, p0, Lcom/metamoji/noteanytime/MainActivity$61;->val$driveId:Ljava/lang/String;

    iput-object p4, p0, Lcom/metamoji/noteanytime/MainActivity$61;->val$sdDriveMan:Lcom/metamoji/dvm/DvmDriveManager;

    iput-object p5, p0, Lcom/metamoji/noteanytime/MainActivity$61;->val$activity:Landroidx/fragment/app/FragmentActivity;

    iput-object p6, p0, Lcom/metamoji/noteanytime/MainActivity$61;->val$folderChangeEventListener:Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDialogClosed(Ljava/lang/String;Landroid/os/Bundle;Z)V
    .locals 0

    if-eqz p3, :cond_0

    .line 4289
    iget-object p1, p0, Lcom/metamoji/noteanytime/MainActivity$61;->val$dlg:Lcom/metamoji/ui/cabinet/user/management/ClassBoxNameDialog;

    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/user/management/ClassBoxNameDialog;->getDriveName()Ljava/lang/String;

    move-result-object p1

    .line 4290
    iget-object p2, p0, Lcom/metamoji/noteanytime/MainActivity$61;->val$oldDriveName:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 4292
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p2

    new-instance p3, Lcom/metamoji/noteanytime/MainActivity$61$1;

    invoke-direct {p3, p0, p1}, Lcom/metamoji/noteanytime/MainActivity$61$1;-><init>(Lcom/metamoji/noteanytime/MainActivity$61;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Lcom/metamoji/cm/CmTaskManager;->runOnBackground(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
