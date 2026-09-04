.class Lcom/metamoji/noteanytime/MainActivity$17;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/noteanytime/MainActivity;->onNewIntent(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/noteanytime/MainActivity;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/metamoji/noteanytime/MainActivity;Landroid/content/Intent;)V
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

    .line 858
    iput-object p1, p0, Lcom/metamoji/noteanytime/MainActivity$17;->this$0:Lcom/metamoji/noteanytime/MainActivity;

    iput-object p2, p0, Lcom/metamoji/noteanytime/MainActivity$17;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 862
    iget-object v0, p0, Lcom/metamoji/noteanytime/MainActivity$17;->val$intent:Landroid/content/Intent;

    const-string v1, "docId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 863
    iget-object v1, p0, Lcom/metamoji/noteanytime/MainActivity$17;->val$intent:Landroid/content/Intent;

    const-string v2, "driveId"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    .line 865
    iget-object v2, p0, Lcom/metamoji/noteanytime/MainActivity$17;->this$0:Lcom/metamoji/noteanytime/MainActivity;

    const/4 v3, 0x0

    invoke-static {v2, v1, v0, v3, v2}, Lcom/metamoji/noteanytime/MainActivity;->openFolderContainsDocument(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;)V

    :cond_0
    return-void
.end method
