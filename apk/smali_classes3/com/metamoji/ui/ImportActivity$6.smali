.class Lcom/metamoji/ui/ImportActivity$6;
.super Ljava/lang/Object;
.source "ImportActivity.java"

# interfaces
.implements Lcom/metamoji/ui/ImportActivity$IImportModeResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/ImportActivity;->doImportAndPermissionCheck()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/ImportActivity;

.field final synthetic val$content:Lcom/metamoji/noteanytime/cm/IntentContent;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/ImportActivity;Landroid/content/Intent;Lcom/metamoji/noteanytime/cm/IntentContent;)V
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

    .line 340
    iput-object p1, p0, Lcom/metamoji/ui/ImportActivity$6;->this$0:Lcom/metamoji/ui/ImportActivity;

    iput-object p2, p0, Lcom/metamoji/ui/ImportActivity$6;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/metamoji/ui/ImportActivity$6;->val$content:Lcom/metamoji/noteanytime/cm/IntentContent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public selected(I)V
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    if-eq p1, v0, :cond_1

    .line 353
    iget-object p1, p0, Lcom/metamoji/ui/ImportActivity$6;->this$0:Lcom/metamoji/ui/ImportActivity;

    invoke-virtual {p1}, Lcom/metamoji/ui/ImportActivity;->finish()V

    return-void

    .line 346
    :cond_0
    iget-object p1, p0, Lcom/metamoji/ui/ImportActivity$6;->val$intent:Landroid/content/Intent;

    const-string v1, "insertDocument"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 349
    :cond_1
    iget-object p1, p0, Lcom/metamoji/ui/ImportActivity$6;->this$0:Lcom/metamoji/ui/ImportActivity;

    iget-object v0, p0, Lcom/metamoji/ui/ImportActivity$6;->val$intent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/metamoji/ui/ImportActivity$6;->val$content:Lcom/metamoji/noteanytime/cm/IntentContent;

    invoke-static {p1, v0, v1}, Lcom/metamoji/ui/ImportActivity;->-$$Nest$mdoImport(Lcom/metamoji/ui/ImportActivity;Landroid/content/Intent;Lcom/metamoji/noteanytime/cm/IntentContent;)V

    return-void
.end method
