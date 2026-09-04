.class Lcom/metamoji/noteanytime/MainActivity$59;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/noteanytime/MainActivity;->leaveDrive(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroidx/fragment/app/FragmentActivity;

.field final synthetic val$driveId:Ljava/lang/String;

.field final synthetic val$folderChangeEventListener:Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 4179
    iput-object p1, p0, Lcom/metamoji/noteanytime/MainActivity$59;->val$driveId:Ljava/lang/String;

    iput-object p2, p0, Lcom/metamoji/noteanytime/MainActivity$59;->val$activity:Landroidx/fragment/app/FragmentActivity;

    iput-object p3, p0, Lcom/metamoji/noteanytime/MainActivity$59;->val$folderChangeEventListener:Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 4183
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance p2, Lcom/metamoji/noteanytime/MainActivity$59$1;

    invoke-direct {p2, p0}, Lcom/metamoji/noteanytime/MainActivity$59$1;-><init>(Lcom/metamoji/noteanytime/MainActivity$59;)V

    invoke-virtual {p1, p2}, Lcom/metamoji/cm/CmTaskManager;->runOnBackground(Ljava/lang/Runnable;)V

    return-void
.end method
