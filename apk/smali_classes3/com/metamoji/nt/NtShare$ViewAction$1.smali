.class Lcom/metamoji/nt/NtShare$ViewAction$1;
.super Ljava/lang/Object;
.source "NtShare.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtShare$ViewAction;->sendFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtShare$ViewAction;

.field final synthetic val$file:Ljava/io/File;

.field final synthetic val$mimeType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtShare$ViewAction;Ljava/io/File;Ljava/lang/String;)V
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

    .line 1144
    iput-object p1, p0, Lcom/metamoji/nt/NtShare$ViewAction$1;->this$0:Lcom/metamoji/nt/NtShare$ViewAction;

    iput-object p2, p0, Lcom/metamoji/nt/NtShare$ViewAction$1;->val$file:Ljava/io/File;

    iput-object p3, p0, Lcom/metamoji/nt/NtShare$ViewAction$1;->val$mimeType:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$run$0(Ljava/io/File;Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;)V
    .locals 2

    .line 1149
    invoke-static {p0, p2}, Lcom/metamoji/cm/CmUtils;->getUriFromFile(Ljava/io/File;Landroid/content/Context;)Landroid/net/Uri;

    move-result-object p0

    .line 1151
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1152
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1155
    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 p1, 0x0

    .line 1156
    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_0

    .line 1157
    sget p0, Lcom/metamoji/noteanytime/R$string;->Msg_Error_ExportApp_Fail_Message:I

    invoke-static {p2, p0}, Lcom/metamoji/nt/NtShare;->showErrorMessage(Landroid/content/Context;I)V

    return-void

    .line 1162
    :cond_0
    :try_start_0
    invoke-virtual {p2, v0}, Landroidx/fragment/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 1165
    :catch_0
    sget p0, Lcom/metamoji/noteanytime/R$string;->Msg_Error_ExportApp_Fail_Message:I

    invoke-static {p2, p0}, Lcom/metamoji/nt/NtShare;->showErrorMessage(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1147
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object v0

    .line 1148
    iget-object v1, p0, Lcom/metamoji/nt/NtShare$ViewAction$1;->val$file:Ljava/io/File;

    iget-object v2, p0, Lcom/metamoji/nt/NtShare$ViewAction$1;->val$mimeType:Ljava/lang/String;

    new-instance v3, Lcom/metamoji/nt/NtShare$ViewAction$1$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1, v2}, Lcom/metamoji/nt/NtShare$ViewAction$1$$ExternalSyntheticLambda0;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/metamoji/ui/UiCurrentActivityManager;->runWithActivity(Lcom/metamoji/ui/UiCurrentActivityManager$ICallWithActivity;)V

    return-void
.end method
