.class Lcom/metamoji/ui/dialog/CreateFolder$1;
.super Ljava/lang/Object;
.source "CreateFolder.java"

# interfaces
.implements Lcom/metamoji/noteanytime/MainActivity$IDoAutoSyncDriveBlock;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/CreateFolder;->onDone(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/dialog/CreateFolder;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/dialog/CreateFolder;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 128
    iput-object p1, p0, Lcom/metamoji/ui/dialog/CreateFolder$1;->this$0:Lcom/metamoji/ui/dialog/CreateFolder;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/CreateFolder$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public completion(Z)V
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/metamoji/ui/dialog/CreateFolder$1;->this$0:Lcom/metamoji/ui/dialog/CreateFolder;

    if-nez p1, :cond_0

    .line 132
    iget-object p1, p0, Lcom/metamoji/ui/dialog/CreateFolder$1;->val$view:Landroid/view/View;

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/dialog/CreateFolder;->onCancel(Landroid/view/View;)V

    return-void

    .line 135
    :cond_0
    iget-object p1, p0, Lcom/metamoji/ui/dialog/CreateFolder$1;->val$view:Landroid/view/View;

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/dialog/CreateFolder;->onDoneInnr(Landroid/view/View;)V

    return-void
.end method
