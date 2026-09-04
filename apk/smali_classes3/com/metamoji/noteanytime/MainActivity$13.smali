.class Lcom/metamoji/noteanytime/MainActivity$13;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/noteanytime/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/noteanytime/MainActivity;

.field final synthetic val$back:Ljava/lang/String;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/metamoji/noteanytime/MainActivity;Landroid/content/Intent;Ljava/lang/String;)V
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

    .line 747
    iput-object p1, p0, Lcom/metamoji/noteanytime/MainActivity$13;->this$0:Lcom/metamoji/noteanytime/MainActivity;

    iput-object p2, p0, Lcom/metamoji/noteanytime/MainActivity$13;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/metamoji/noteanytime/MainActivity$13;->val$back:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 750
    iget-object v0, p0, Lcom/metamoji/noteanytime/MainActivity$13;->val$intent:Landroid/content/Intent;

    const-string v1, "fromEditorActivity"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 751
    iget-object v0, p0, Lcom/metamoji/noteanytime/MainActivity$13;->this$0:Lcom/metamoji/noteanytime/MainActivity;

    iget-object v1, p0, Lcom/metamoji/noteanytime/MainActivity$13;->val$back:Ljava/lang/String;

    iget-object v2, p0, Lcom/metamoji/noteanytime/MainActivity$13;->val$intent:Landroid/content/Intent;

    invoke-static {v0, v1, v2}, Lcom/metamoji/noteanytime/MainActivity;->-$$Nest$mnotifyFinishEditing(Lcom/metamoji/noteanytime/MainActivity;Ljava/lang/String;Landroid/content/Intent;)V

    return-void
.end method
