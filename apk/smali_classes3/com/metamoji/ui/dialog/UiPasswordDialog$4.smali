.class Lcom/metamoji/ui/dialog/UiPasswordDialog$4;
.super Ljava/lang/Object;
.source "UiPasswordDialog.java"

# interfaces
.implements Lcom/metamoji/ui/dialog/UiPasswordDialog$IOnResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/UiPasswordDialog;->asyncGetDecrypter([BLcom/metamoji/ui/dialog/UiPasswordDialog$IPbeResult;Lcom/metamoji/ui/dialog/UiPasswordDialog$SyncPbe;Lcom/metamoji/cm/PBE;I)Lcom/metamoji/ui/dialog/UiPasswordDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$onResult:Lcom/metamoji/ui/dialog/UiPasswordDialog$IPbeResult;

.field final synthetic val$pbe:Lcom/metamoji/cm/PBE;

.field final synthetic val$refPwd:[B

.field final synthetic val$syncPbe:Lcom/metamoji/ui/dialog/UiPasswordDialog$SyncPbe;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/dialog/UiPasswordDialog$SyncPbe;Lcom/metamoji/cm/PBE;[BLcom/metamoji/ui/dialog/UiPasswordDialog$IPbeResult;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 296
    iput-object p1, p0, Lcom/metamoji/ui/dialog/UiPasswordDialog$4;->val$syncPbe:Lcom/metamoji/ui/dialog/UiPasswordDialog$SyncPbe;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/UiPasswordDialog$4;->val$pbe:Lcom/metamoji/cm/PBE;

    iput-object p3, p0, Lcom/metamoji/ui/dialog/UiPasswordDialog$4;->val$refPwd:[B

    iput-object p4, p0, Lcom/metamoji/ui/dialog/UiPasswordDialog$4;->val$onResult:Lcom/metamoji/ui/dialog/UiPasswordDialog$IPbeResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_1

    .line 299
    iget-object v0, p0, Lcom/metamoji/ui/dialog/UiPasswordDialog$4;->val$syncPbe:Lcom/metamoji/ui/dialog/UiPasswordDialog$SyncPbe;

    invoke-virtual {v0}, Lcom/metamoji/ui/dialog/UiPasswordDialog$SyncPbe;->isCancelling()Z

    move-result v0

    if-nez v0, :cond_1

    .line 301
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/ui/dialog/UiPasswordDialog$4;->val$pbe:Lcom/metamoji/cm/PBE;

    invoke-virtual {v0, p1}, Lcom/metamoji/cm/PBE;->setPassword(Ljava/lang/String;)V

    .line 302
    iget-object p1, p0, Lcom/metamoji/ui/dialog/UiPasswordDialog$4;->val$pbe:Lcom/metamoji/cm/PBE;

    iget-object v0, p0, Lcom/metamoji/ui/dialog/UiPasswordDialog$4;->val$refPwd:[B

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/PBE;->checkPassword([B)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 304
    iget-object p1, p0, Lcom/metamoji/ui/dialog/UiPasswordDialog$4;->val$onResult:Lcom/metamoji/ui/dialog/UiPasswordDialog$IPbeResult;

    iget-object v0, p0, Lcom/metamoji/ui/dialog/UiPasswordDialog$4;->val$pbe:Lcom/metamoji/cm/PBE;

    invoke-interface {p1, v0}, Lcom/metamoji/ui/dialog/UiPasswordDialog$IPbeResult;->onResult(Lcom/metamoji/cm/PBE;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 309
    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    .line 317
    :cond_0
    iget-object p1, p0, Lcom/metamoji/ui/dialog/UiPasswordDialog$4;->val$refPwd:[B

    iget-object v0, p0, Lcom/metamoji/ui/dialog/UiPasswordDialog$4;->val$onResult:Lcom/metamoji/ui/dialog/UiPasswordDialog$IPbeResult;

    iget-object v1, p0, Lcom/metamoji/ui/dialog/UiPasswordDialog$4;->val$syncPbe:Lcom/metamoji/ui/dialog/UiPasswordDialog$SyncPbe;

    iget-object v2, p0, Lcom/metamoji/ui/dialog/UiPasswordDialog$4;->val$pbe:Lcom/metamoji/cm/PBE;

    sget v3, Lcom/metamoji/noteanytime/R$string;->Password_Error_Wrong:I

    invoke-static {p1, v0, v1, v2, v3}, Lcom/metamoji/ui/dialog/UiPasswordDialog;->-$$Nest$smasyncGetDecrypter([BLcom/metamoji/ui/dialog/UiPasswordDialog$IPbeResult;Lcom/metamoji/ui/dialog/UiPasswordDialog$SyncPbe;Lcom/metamoji/cm/PBE;I)Lcom/metamoji/ui/dialog/UiPasswordDialog;

    return-void

    .line 313
    :cond_1
    iget-object p1, p0, Lcom/metamoji/ui/dialog/UiPasswordDialog$4;->val$onResult:Lcom/metamoji/ui/dialog/UiPasswordDialog$IPbeResult;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/metamoji/ui/dialog/UiPasswordDialog$IPbeResult;->onResult(Lcom/metamoji/cm/PBE;)V

    return-void
.end method
