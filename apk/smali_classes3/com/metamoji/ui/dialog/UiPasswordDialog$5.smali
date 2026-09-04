.class Lcom/metamoji/ui/dialog/UiPasswordDialog$5;
.super Ljava/lang/Object;
.source "UiPasswordDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/UiPasswordDialog;->getDecrypter([B)Lcom/metamoji/cm/PBE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$refPwd:[B

.field final synthetic val$syncPbe:Lcom/metamoji/ui/dialog/UiPasswordDialog$SyncPbe;


# direct methods
.method constructor <init>([BLcom/metamoji/ui/dialog/UiPasswordDialog$SyncPbe;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 335
    iput-object p1, p0, Lcom/metamoji/ui/dialog/UiPasswordDialog$5;->val$refPwd:[B

    iput-object p2, p0, Lcom/metamoji/ui/dialog/UiPasswordDialog$5;->val$syncPbe:Lcom/metamoji/ui/dialog/UiPasswordDialog$SyncPbe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 338
    new-instance v0, Lcom/metamoji/cm/PBE;

    invoke-direct {v0}, Lcom/metamoji/cm/PBE;-><init>()V

    .line 339
    iget-object v1, p0, Lcom/metamoji/ui/dialog/UiPasswordDialog$5;->val$refPwd:[B

    new-instance v2, Lcom/metamoji/ui/dialog/UiPasswordDialog$5$1;

    invoke-direct {v2, p0}, Lcom/metamoji/ui/dialog/UiPasswordDialog$5$1;-><init>(Lcom/metamoji/ui/dialog/UiPasswordDialog$5;)V

    iget-object v3, p0, Lcom/metamoji/ui/dialog/UiPasswordDialog$5;->val$syncPbe:Lcom/metamoji/ui/dialog/UiPasswordDialog$SyncPbe;

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v0, v4}, Lcom/metamoji/ui/dialog/UiPasswordDialog;->-$$Nest$smasyncGetDecrypter([BLcom/metamoji/ui/dialog/UiPasswordDialog$IPbeResult;Lcom/metamoji/ui/dialog/UiPasswordDialog$SyncPbe;Lcom/metamoji/cm/PBE;I)Lcom/metamoji/ui/dialog/UiPasswordDialog;

    return-void
.end method
