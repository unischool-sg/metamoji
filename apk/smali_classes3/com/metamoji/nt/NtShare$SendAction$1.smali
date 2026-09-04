.class Lcom/metamoji/nt/NtShare$SendAction$1;
.super Ljava/lang/Object;
.source "NtShare.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtShare$SendAction;->sendFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtShare$SendAction;

.field final synthetic val$addressArray:[Ljava/lang/String;

.field final synthetic val$file:Ljava/io/File;

.field final synthetic val$mimeType:Ljava/lang/String;

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtShare$SendAction;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
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

    .line 1083
    iput-object p1, p0, Lcom/metamoji/nt/NtShare$SendAction$1;->this$0:Lcom/metamoji/nt/NtShare$SendAction;

    iput-object p2, p0, Lcom/metamoji/nt/NtShare$SendAction$1;->val$file:Ljava/io/File;

    iput-object p3, p0, Lcom/metamoji/nt/NtShare$SendAction$1;->val$mimeType:Ljava/lang/String;

    iput-object p4, p0, Lcom/metamoji/nt/NtShare$SendAction$1;->val$text:Ljava/lang/String;

    iput-object p5, p0, Lcom/metamoji/nt/NtShare$SendAction$1;->val$addressArray:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$run$0(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;)V
    .locals 2

    .line 1088
    invoke-static {p0, p4}, Lcom/metamoji/cm/CmUtils;->getUriFromFile(Ljava/io/File;Landroid/content/Context;)Landroid/net/Uri;

    move-result-object p0

    .line 1090
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1091
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1092
    const-string p1, "android.intent.extra.STREAM"

    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    if-eqz p2, :cond_0

    .line 1100
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    .line 1101
    const-string p0, "android.intent.extra.TEXT"

    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    if-eqz p3, :cond_1

    .line 1103
    array-length p0, p3

    if-lez p0, :cond_1

    .line 1104
    const-string p0, "android.intent.extra.EMAIL"

    invoke-virtual {v0, p0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1108
    :cond_1
    invoke-virtual {p4}, Landroidx/fragment/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 p1, 0x0

    .line 1109
    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_2

    .line 1110
    sget p0, Lcom/metamoji/noteanytime/R$string;->Msg_Error_ExportApp_Fail_Message:I

    invoke-static {p4, p0}, Lcom/metamoji/nt/NtShare;->showErrorMessage(Landroid/content/Context;I)V

    return-void

    .line 1115
    :cond_2
    :try_start_0
    invoke-virtual {p4, v0}, Landroidx/fragment/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 1118
    :catch_0
    sget p0, Lcom/metamoji/noteanytime/R$string;->Msg_Error_ExportApp_Fail_Message:I

    invoke-static {p4, p0}, Lcom/metamoji/nt/NtShare;->showErrorMessage(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1086
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object v0

    .line 1087
    iget-object v1, p0, Lcom/metamoji/nt/NtShare$SendAction$1;->val$file:Ljava/io/File;

    iget-object v2, p0, Lcom/metamoji/nt/NtShare$SendAction$1;->val$mimeType:Ljava/lang/String;

    iget-object v3, p0, Lcom/metamoji/nt/NtShare$SendAction$1;->val$text:Ljava/lang/String;

    iget-object v4, p0, Lcom/metamoji/nt/NtShare$SendAction$1;->val$addressArray:[Ljava/lang/String;

    new-instance v5, Lcom/metamoji/nt/NtShare$SendAction$1$$ExternalSyntheticLambda0;

    invoke-direct {v5, v1, v2, v3, v4}, Lcom/metamoji/nt/NtShare$SendAction$1$$ExternalSyntheticLambda0;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lcom/metamoji/ui/UiCurrentActivityManager;->runWithActivity(Lcom/metamoji/ui/UiCurrentActivityManager$ICallWithActivity;)V

    return-void
.end method
