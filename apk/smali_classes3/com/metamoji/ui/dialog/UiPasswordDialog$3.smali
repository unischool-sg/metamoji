.class Lcom/metamoji/ui/dialog/UiPasswordDialog$3;
.super Ljava/lang/Object;
.source "UiPasswordDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/UiPasswordDialog;->checkPassword(Ljava/lang/String;)Lcom/metamoji/cm/PBE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$hashPwd:Ljava/lang/String;

.field final synthetic val$syncPbe:Lcom/metamoji/ui/dialog/UiPasswordDialog$SyncPbe;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/metamoji/ui/dialog/UiPasswordDialog$SyncPbe;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 272
    iput-object p1, p0, Lcom/metamoji/ui/dialog/UiPasswordDialog$3;->val$hashPwd:Ljava/lang/String;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/UiPasswordDialog$3;->val$syncPbe:Lcom/metamoji/ui/dialog/UiPasswordDialog$SyncPbe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 275
    iget-object v0, p0, Lcom/metamoji/ui/dialog/UiPasswordDialog$3;->val$hashPwd:Ljava/lang/String;

    new-instance v1, Lcom/metamoji/ui/dialog/UiPasswordDialog$3$1;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/dialog/UiPasswordDialog$3$1;-><init>(Lcom/metamoji/ui/dialog/UiPasswordDialog$3;)V

    iget-object v2, p0, Lcom/metamoji/ui/dialog/UiPasswordDialog$3;->val$syncPbe:Lcom/metamoji/ui/dialog/UiPasswordDialog$SyncPbe;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/metamoji/ui/dialog/UiPasswordDialog;->-$$Nest$smasyncCheckPassword(Ljava/lang/String;Lcom/metamoji/ui/dialog/UiPasswordDialog$IPbeResult;Lcom/metamoji/ui/dialog/UiPasswordDialog$SyncPbe;I)V

    return-void
.end method
