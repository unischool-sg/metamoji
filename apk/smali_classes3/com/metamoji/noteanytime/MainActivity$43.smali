.class Lcom/metamoji/noteanytime/MainActivity$43;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/noteanytime/MainActivity;->moveNote(Lcom/metamoji/nt/cabinet/NtCabinetClipboard$Data;Lcom/metamoji/ui/cabinet/CabinetTreeItem;Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ui/cabinet/CabinetTreeItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroidx/fragment/app/FragmentActivity;

.field final synthetic val$currentDisplayedFolder:Lcom/metamoji/ui/cabinet/CabinetTreeItem;


# direct methods
.method constructor <init>(Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ui/cabinet/CabinetTreeItem;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2719
    iput-object p1, p0, Lcom/metamoji/noteanytime/MainActivity$43;->val$activity:Landroidx/fragment/app/FragmentActivity;

    iput-object p2, p0, Lcom/metamoji/noteanytime/MainActivity$43;->val$currentDisplayedFolder:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2722
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/noteanytime/MainActivity$43$1;

    invoke-direct {v1, p0}, Lcom/metamoji/noteanytime/MainActivity$43$1;-><init>(Lcom/metamoji/noteanytime/MainActivity$43;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method
