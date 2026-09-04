.class Lcom/metamoji/ui/dialog/UiPasswordDialog$2;
.super Ljava/lang/Object;
.source "UiPasswordDialog.java"

# interfaces
.implements Lcom/metamoji/ui/dialog/UiPasswordDialog$IOnResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/UiPasswordDialog;->asyncCheckPassword(Ljava/lang/String;Lcom/metamoji/ui/dialog/UiPasswordDialog$IPbeResult;Lcom/metamoji/ui/dialog/UiPasswordDialog$SyncPbe;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$hashPwd:Ljava/lang/String;

.field final synthetic val$onResult:Lcom/metamoji/ui/dialog/UiPasswordDialog$IPbeResult;

.field final synthetic val$syncPbe:Lcom/metamoji/ui/dialog/UiPasswordDialog$SyncPbe;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/dialog/UiPasswordDialog$SyncPbe;Ljava/lang/String;Lcom/metamoji/ui/dialog/UiPasswordDialog$IPbeResult;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 226
    iput-object p1, p0, Lcom/metamoji/ui/dialog/UiPasswordDialog$2;->val$syncPbe:Lcom/metamoji/ui/dialog/UiPasswordDialog$SyncPbe;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/UiPasswordDialog$2;->val$hashPwd:Ljava/lang/String;

    iput-object p3, p0, Lcom/metamoji/ui/dialog/UiPasswordDialog$2;->val$onResult:Lcom/metamoji/ui/dialog/UiPasswordDialog$IPbeResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 229
    iget-object v0, p0, Lcom/metamoji/ui/dialog/UiPasswordDialog$2;->val$syncPbe:Lcom/metamoji/ui/dialog/UiPasswordDialog$SyncPbe;

    invoke-virtual {v0}, Lcom/metamoji/ui/dialog/UiPasswordDialog$SyncPbe;->isCancelling()Z

    move-result v0

    if-nez v0, :cond_1

    .line 231
    :try_start_0
    new-instance v0, Lcom/metamoji/cm/HashGenerator;

    sget-object v1, Lcom/metamoji/cm/HashGenerator$Algorithm;->SHA1:Lcom/metamoji/cm/HashGenerator$Algorithm;

    invoke-direct {v0, v1}, Lcom/metamoji/cm/HashGenerator;-><init>(Lcom/metamoji/cm/HashGenerator$Algorithm;)V

    .line 232
    invoke-virtual {v0, p1}, Lcom/metamoji/cm/HashGenerator;->append(Ljava/lang/String;)V

    .line 233
    invoke-virtual {v0}, Lcom/metamoji/cm/HashGenerator;->appendSecretSeed()V

    .line 234
    invoke-virtual {v0}, Lcom/metamoji/cm/HashGenerator;->getHashString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/ui/dialog/UiPasswordDialog$2;->val$hashPwd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    new-instance v0, Lcom/metamoji/cm/PBE;

    invoke-direct {v0}, Lcom/metamoji/cm/PBE;-><init>()V

    .line 237
    invoke-virtual {v0, p1}, Lcom/metamoji/cm/PBE;->setPassword(Ljava/lang/String;)V

    .line 238
    iget-object p1, p0, Lcom/metamoji/ui/dialog/UiPasswordDialog$2;->val$onResult:Lcom/metamoji/ui/dialog/UiPasswordDialog$IPbeResult;

    invoke-interface {p1, v0}, Lcom/metamoji/ui/dialog/UiPasswordDialog$IPbeResult;->onResult(Lcom/metamoji/cm/PBE;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 243
    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    .line 250
    :cond_0
    iget-object p1, p0, Lcom/metamoji/ui/dialog/UiPasswordDialog$2;->val$hashPwd:Ljava/lang/String;

    iget-object v0, p0, Lcom/metamoji/ui/dialog/UiPasswordDialog$2;->val$onResult:Lcom/metamoji/ui/dialog/UiPasswordDialog$IPbeResult;

    iget-object v1, p0, Lcom/metamoji/ui/dialog/UiPasswordDialog$2;->val$syncPbe:Lcom/metamoji/ui/dialog/UiPasswordDialog$SyncPbe;

    sget v2, Lcom/metamoji/noteanytime/R$string;->Password_Error_Wrong:I

    invoke-static {p1, v0, v1, v2}, Lcom/metamoji/ui/dialog/UiPasswordDialog;->-$$Nest$smasyncCheckPassword(Ljava/lang/String;Lcom/metamoji/ui/dialog/UiPasswordDialog$IPbeResult;Lcom/metamoji/ui/dialog/UiPasswordDialog$SyncPbe;I)V

    return-void

    .line 247
    :cond_1
    iget-object p1, p0, Lcom/metamoji/ui/dialog/UiPasswordDialog$2;->val$onResult:Lcom/metamoji/ui/dialog/UiPasswordDialog$IPbeResult;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/metamoji/ui/dialog/UiPasswordDialog$IPbeResult;->onResult(Lcom/metamoji/cm/PBE;)V

    return-void
.end method
