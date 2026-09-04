.class Lcom/metamoji/noteanytime/MainActivity$21;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/noteanytime/MainActivity;->showSortListDialog(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroidx/fragment/app/FragmentActivity;

.field final synthetic val$folderChangeEventListener:Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;


# direct methods
.method constructor <init>(Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1164
    iput-object p1, p0, Lcom/metamoji/noteanytime/MainActivity$21;->val$activity:Landroidx/fragment/app/FragmentActivity;

    iput-object p2, p0, Lcom/metamoji/noteanytime/MainActivity$21;->val$folderChangeEventListener:Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDialogClosed(Ljava/lang/String;Landroid/os/Bundle;Z)V
    .locals 0

    if-eqz p3, :cond_0

    .line 1169
    invoke-static {}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->getCurrentFolder()Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object p1

    .line 1170
    iget-object p2, p0, Lcom/metamoji/noteanytime/MainActivity$21;->val$activity:Landroidx/fragment/app/FragmentActivity;

    iget-object p3, p0, Lcom/metamoji/noteanytime/MainActivity$21;->val$folderChangeEventListener:Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;

    invoke-static {p2, p1, p3}, Lcom/metamoji/noteanytime/MainActivity;->-$$Nest$smupdateCabinetState(Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ui/cabinet/CabinetTreeItem;Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;)V

    .line 1172
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object p1

    .line 1173
    const-string p2, "CabinetSortKey"

    invoke-static {}, Lcom/metamoji/noteanytime/MainActivity;->getNoteListSortKey()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/metamoji/nt/NtUserDefaults;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 1174
    const-string p2, "CabinetAscending"

    invoke-static {}, Lcom/metamoji/noteanytime/MainActivity;->getNoteListAscending()Z

    move-result p3

    invoke-virtual {p1, p2, p3}, Lcom/metamoji/nt/NtUserDefaults;->setValue(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method
