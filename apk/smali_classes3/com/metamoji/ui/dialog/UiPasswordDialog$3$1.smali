.class Lcom/metamoji/ui/dialog/UiPasswordDialog$3$1;
.super Ljava/lang/Object;
.source "UiPasswordDialog.java"

# interfaces
.implements Lcom/metamoji/ui/dialog/UiPasswordDialog$IPbeResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/UiPasswordDialog$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/dialog/UiPasswordDialog$3;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/dialog/UiPasswordDialog$3;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 275
    iput-object p1, p0, Lcom/metamoji/ui/dialog/UiPasswordDialog$3$1;->this$0:Lcom/metamoji/ui/dialog/UiPasswordDialog$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/metamoji/cm/PBE;)V
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/metamoji/ui/dialog/UiPasswordDialog$3$1;->this$0:Lcom/metamoji/ui/dialog/UiPasswordDialog$3;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/UiPasswordDialog$3;->val$syncPbe:Lcom/metamoji/ui/dialog/UiPasswordDialog$SyncPbe;

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/dialog/UiPasswordDialog$SyncPbe;->setResult(Lcom/metamoji/cm/PBE;)V

    return-void
.end method
