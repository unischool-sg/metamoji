.class Lcom/metamoji/ui/dialog/CreateFolder$6$1;
.super Ljava/lang/Object;
.source "CreateFolder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/CreateFolder$6;->call()Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/ui/dialog/CreateFolder$6;

.field final synthetic val$activity:Landroidx/fragment/app/FragmentActivity;

.field final synthetic val$folderItem:Lcom/metamoji/ui/cabinet/CabinetTreeItem;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/dialog/CreateFolder$6;Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ui/cabinet/CabinetTreeItem;)V
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

    .line 275
    iput-object p1, p0, Lcom/metamoji/ui/dialog/CreateFolder$6$1;->this$1:Lcom/metamoji/ui/dialog/CreateFolder$6;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/CreateFolder$6$1;->val$activity:Landroidx/fragment/app/FragmentActivity;

    iput-object p3, p0, Lcom/metamoji/ui/dialog/CreateFolder$6$1;->val$folderItem:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 278
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/ui/dialog/CreateFolder$6$1$1;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/dialog/CreateFolder$6$1$1;-><init>(Lcom/metamoji/ui/dialog/CreateFolder$6$1;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method
