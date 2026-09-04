.class Lcom/metamoji/noteanytime/EditorActivity$43$1;
.super Ljava/lang/Object;
.source "EditorActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/noteanytime/EditorActivity$43;->sendFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/noteanytime/EditorActivity$43;

.field final synthetic val$file:Ljava/io/File;

.field final synthetic val$mimeType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/metamoji/noteanytime/EditorActivity$43;Ljava/io/File;Ljava/lang/String;)V
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

    .line 3437
    iput-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$43$1;->this$1:Lcom/metamoji/noteanytime/EditorActivity$43;

    iput-object p2, p0, Lcom/metamoji/noteanytime/EditorActivity$43$1;->val$file:Ljava/io/File;

    iput-object p3, p0, Lcom/metamoji/noteanytime/EditorActivity$43$1;->val$mimeType:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 3440
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ui/UiCurrentActivityManager;->getCurrentActivityOrNull()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 3445
    :cond_0
    iget-object v1, p0, Lcom/metamoji/noteanytime/EditorActivity$43$1;->val$file:Ljava/io/File;

    invoke-static {v1, v0}, Lcom/metamoji/cm/CmUtils;->getUriFromFile(Ljava/io/File;Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v1

    .line 3447
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.metamoji.note.SENDBACK"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3448
    iget-object v3, p0, Lcom/metamoji/noteanytime/EditorActivity$43$1;->this$1:Lcom/metamoji/noteanytime/EditorActivity$43;

    iget-object v3, v3, Lcom/metamoji/noteanytime/EditorActivity$43;->val$srcPackage:Ljava/lang/String;

    iget-object v4, p0, Lcom/metamoji/noteanytime/EditorActivity$43$1;->this$1:Lcom/metamoji/noteanytime/EditorActivity$43;

    iget-object v4, v4, Lcom/metamoji/noteanytime/EditorActivity$43;->val$srcClass:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3449
    iget-object v3, p0, Lcom/metamoji/noteanytime/EditorActivity$43$1;->val$mimeType:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 3450
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3455
    :try_start_0
    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
