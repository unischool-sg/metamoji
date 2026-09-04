.class Lcom/metamoji/ui/ImportActivity$4;
.super Ljava/lang/Object;
.source "ImportActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    .line 310
    iput-object p1, p0, Lcom/metamoji/ui/ImportActivity$4;->this$0:Lcom/metamoji/ui/ImportActivity;

    iput-object p2, p0, Lcom/metamoji/ui/ImportActivity$4;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/metamoji/ui/ImportActivity$4;->val$content:Lcom/metamoji/noteanytime/cm/IntentContent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 316
    iget-object p1, p0, Lcom/metamoji/ui/ImportActivity$4;->this$0:Lcom/metamoji/ui/ImportActivity;

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 314
    iget-object p2, p0, Lcom/metamoji/ui/ImportActivity$4;->val$intent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/metamoji/ui/ImportActivity$4;->val$content:Lcom/metamoji/noteanytime/cm/IntentContent;

    invoke-static {p1, p2, v0}, Lcom/metamoji/ui/ImportActivity;->-$$Nest$mdoImport(Lcom/metamoji/ui/ImportActivity;Landroid/content/Intent;Lcom/metamoji/noteanytime/cm/IntentContent;)V

    return-void

    .line 316
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/ui/ImportActivity;->finish()V

    return-void
.end method
