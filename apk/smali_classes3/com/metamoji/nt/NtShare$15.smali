.class Lcom/metamoji/nt/NtShare$15;
.super Ljava/lang/Object;
.source "NtShare.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtShare;->shareAsText(Ljava/lang/String;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$addressArray:[Ljava/lang/String;

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 981
    iput-object p1, p0, Lcom/metamoji/nt/NtShare$15;->val$text:Ljava/lang/String;

    iput-object p2, p0, Lcom/metamoji/nt/NtShare$15;->val$addressArray:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$run$0(Ljava/lang/String;[Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;)V
    .locals 2

    .line 986
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 987
    const-string/jumbo v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 988
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p1, :cond_0

    .line 989
    array-length p0, p1

    if-lez p0, :cond_0

    .line 990
    const-string p0, "android.intent.extra.EMAIL"

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 994
    :cond_0
    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 p1, 0x0

    .line 995
    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_1

    .line 996
    sget p0, Lcom/metamoji/noteanytime/R$string;->Msg_Error_ExportApp_Fail_Message:I

    invoke-static {p2, p0}, Lcom/metamoji/nt/NtShare;->showErrorMessage(Landroid/content/Context;I)V

    return-void

    .line 1001
    :cond_1
    :try_start_0
    invoke-virtual {p2, v0}, Landroidx/fragment/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 1004
    :catch_0
    sget p0, Lcom/metamoji/noteanytime/R$string;->Msg_Error_ExportApp_Fail_Message:I

    invoke-static {p2, p0}, Lcom/metamoji/nt/NtShare;->showErrorMessage(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 984
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object v0

    .line 985
    iget-object v1, p0, Lcom/metamoji/nt/NtShare$15;->val$text:Ljava/lang/String;

    iget-object v2, p0, Lcom/metamoji/nt/NtShare$15;->val$addressArray:[Ljava/lang/String;

    new-instance v3, Lcom/metamoji/nt/NtShare$15$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1, v2}, Lcom/metamoji/nt/NtShare$15$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/metamoji/ui/UiCurrentActivityManager;->runWithActivity(Lcom/metamoji/ui/UiCurrentActivityManager$ICallWithActivity;)V

    return-void
.end method
